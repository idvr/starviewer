/*************************************************************************************
  Copyright (C) 2014 Laboratori de Gràfics i Imatge, Universitat de Girona &
  Institut de Diagnòstic per la Imatge.
  Girona 2014. All rights reserved.
  http://starviewer.udg.edu

  This file is part of the Starviewer (Medical Imaging Software) open source project.
  It is subject to the license terms in the LICENSE file found in the top-level
  directory of this distribution and at http://starviewer.udg.edu/license. No part of
  the Starviewer (Medical Imaging Software) open source project, including this file,
  may be copied, modified, propagated, or distributed except according to the
  terms contained in the LICENSE file.
 *************************************************************************************/

#ifndef UDGHANGINGPROTOCOLMANAGER_H
#define UDGHANGINGPROTOCOLMANAGER_H

#include <QObject>
#include <QList>
#include <QMultiHash>
#include <QPointer>
#include <QProgressDialog>

namespace udg {

class ViewersLayout;
class HangingProtocol;
class HangingProtocolImageSet;
class HangingProtocolDisplaySet;
class Patient;
class Series;
class Study;
class Image;
class Q2DViewerWidget;
class Q2DViewer;
class RelatedStudiesManager;

/**
    Classe encarregada de fer la gestió de HP: cercar HP candidats i aplicar HP.
    Degut a que els HP es modifiquen per assignar-los les sèries que s'han de mostrar, es fa una còpia del repositori.
  */
class HangingProtocolManager : public QObject {
Q_OBJECT
public:
    HangingProtocolManager(QObject *parent = 0);
    ~HangingProtocolManager();

    /// Buscar els hanging protocols disponibles
    QList<HangingProtocol*> searchHangingProtocols(Patient *patient);
    QList<HangingProtocol*> searchHangingProtocols(Patient *patient, const QList<Study*> &previousStudies);

    /// Aplica un hanging protocol concret
    void applyHangingProtocol(HangingProtocol *hangingProtocol, ViewersLayout *layout, Patient *patient);

    /// Aplica el millor hanging protocol de la llista donada
    HangingProtocol* setBestHangingProtocol(Patient *patient, const QList<HangingProtocol*> &hangingProtocolList, ViewersLayout *layout);

    /// Si hi havia estudis en descàrrega, s'elimina de la llista
    void cancelHangingProtocolDownloading();

    /// Returns true if the given study corresponds to a previous study fetched by a hanging protocol with previous, false otherwise
    bool isPreviousStudyForHangingProtocol(Study *study);

signals:
    /// Emits the study UID of a study requested by a hanging protocol which no longer needs it because it's not going to be applied for some reason
    /// This will happen when a hanging protocol requests to download a previous study and before it is applied
    /// another hanging protocol is applied or it is explicitly cancelled
    void discardedStudy(QString);

protected:

    /// Fa una còpia del repositori de HP per poder-los modificar sense que el repositori es vegi afectat.
    virtual void copyHangingProtocolRepository();

protected:
    /// Còpia del repositori de HP però poder-los modificar sense que afecti al repositori
    QList<HangingProtocol*> m_availableHangingProtocols;

private slots:
    /// S'ha descarregat un estudi previ demanat
    void previousStudyDownloaded(Study *study);

    /// Slot que comprova si l'error a la descarrega d'un estudi és un dels que s'estava esperan
    void errorDowlonadingPreviousStudies(const QString &studyUID);

private:
    /// Mira si el protocol es pot aplicar al pacient
    bool isModalityCompatible(HangingProtocol *protocol, Patient *patient);

    /// Mira si la modalitat és compatible amb el protocol
    bool isModalityCompatible(HangingProtocol *protocol, const QString &modality);

    /// Mira si la institució és compatible amb el protocol
    bool isInstitutionCompatible(HangingProtocol *protocol, Patient *patient);

    /// Comprova si el protocol és aplicable a la institució. Si el protocol no té expressió regular per institució és aplicable
    bool isValidInstitution(HangingProtocol *protocol, const QString &institutionName);

    /// Mètode encarregat d'assignar l'input al viewer a partir de les especificacions del displaySet+imageSet.
    void setInputToViewer(Q2DViewerWidget *viewerWidget, HangingProtocolDisplaySet *displaySet);

private:
    /// Estructura per guardar les dades que es necessiten quan es rep que s'ha fusionat un pacient amb un nou estudi
    /// Hem de guardar tota la informació perquè només sabem que és un previ i fins que s'hagi descarregat no podem saber quines series i imatges te
    struct StructPreviousStudyDownloading
    {
        /// Widget a on s'ha de mostrar la informacio
        QPointer<Q2DViewerWidget> widgetToDisplay;
        /// Guardem el display set per poder escollir l'orientacio (útil en mamo) i si cal una eina també
        HangingProtocolDisplaySet *displaySet;
    };

    QMultiHash<QString, StructPreviousStudyDownloading*> *m_studiesDownloading;

    /// Objecte utilitzat per descarregar estudis relacionats. No es fa servir QueryScreen per problemes de dependències entre carpetes.
    RelatedStudiesManager *m_relatedStudiesManager;
};

}

#endif
