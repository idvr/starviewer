#ifndef UDGQSTUDYTREEWIDGET_H
#define UDGQSTUDYTREEWIDGET_H

#include "ui_qstudytreewidgetbase.h"

#include <QMenu>
#include <QList>

// Forward declarations
class QString;

namespace udg {

// Forward declarations
class Study;
class Patient;
class Series;
class Image;
class DicomMask;
class DICOMSource;

/**
    Aquesta classe mostrar estudis i sèries d'una manera organitzada i fàcilment.
    Aquesta classe és una modificació de la QTreeWidget que s'ha adaptat per poder visualitzar la informació
    de la cerca d'estudis, permetent consultar les series d'aquell estudi.
    Aquesta classe es sincronitza amb la informació mostrada a QSeriesListWidget
  */
class QStudyTreeWidget : public QWidget, private Ui::QStudyTreeWidgetBase {
Q_OBJECT
public:
    enum ItemTreeLevels { StudyLevel = 0, SeriesLevel = 1, ImageLevel = 2 };

    // Object Name s'utilitza per guardar El NomPacient, Serie + Identificador Sèrie i Imatge + Identificador Image
    enum ColumnIndex { ObjectName = 0, PatientID = 1, PatientAge = 2, Description = 3, Modality = 4, Date = 5, Time = 6,
    DICOMItemID = 7, Institution = 8, UID = 9, StudyID = 10, ProtocolName = 11, AccNumber = 12, Type = 13,
    RefPhysName = 14, PPStartDate = 15, PPStartTime = 16, ReqProcID = 17, SchedProcStep = 18, PatientBirth = 19 };

    QStudyTreeWidget(QWidget *parent = 0);
    ~QStudyTreeWidget();

    /// Mostrar els estudis passats per paràmetres (Els pacients passats per paràmetre ha de contenir només un estudi)
    void insertPatientList(QList<Patient*> patientList);

    /// Insereix el pacient al QStudyTreeWiget
    void insertPatient(Patient *patient);

    /// Insereix un llista de sèries a l'estudi seleccionat actualment
    /// @param seriesList series afegir
    void insertSeriesList(QString studyIstanceUID, QList<Series*> seriesList);

    /// Insereix una llista d'imatges a la sèrie seleccionada actualment
    /// @param imageList llista d'imatges afegir a la sèrie
    void insertImageList(QString studyInstanceUID, QString seriesInstanceUID, QList<Image*> imageList);

    /// Removes study from the list
    /// @param esbora l'estudi amb StudyUID de la llista
    void removeStudy(QString StudyInstanceUIDToRemove);

    /// Esborra la sèrie del QStudyTreeWidget, si és l'única sèrie de l'estudi també esborra l'estudi, no té sentit tenir una estudi sense
    ///  series al TreeWidget
    void removeSeries(const QString &studyInstanceUIDToRemove, const QString &seriesInstanceUIDToRemove);

    /// Indica/Retorna la columna i direcció per la que s'ordena llista
    void setSortByColumn(QStudyTreeWidget::ColumnIndex sortColumn, Qt::SortOrder sortOrder);
    QStudyTreeWidget::ColumnIndex getSortColumn();
    Qt::SortOrder getSortOrderColumn();

    /// Retorna el UID Study de l'estudi seleccionat
    /// @return UID de l'estudi seleccionat
    QString getCurrentStudyUID();

    /// Retorna l'estudi que tingui el studyInstanceUID passat per paràmetre. L'estudi retornat es destruirà quan s'invoqui el mètode
    /// clean d'aquesta classe, per tant si aquest objecte Study pot ser utilitzat després d'invocar el mètode clean és responsabilitat
    /// de la classe que el cridi fer-ne una còpia
    Study* getStudy(QString studyInstanceUID);

    /// Retorna el UID de la sèrie seleccionada, si en aquell moment no hi ha cap sèrie seleccionada, retorna un QString buit
    ///  @return UID de la sèrie seleccionat
    QString getCurrentSeriesUID();

     /// Retorna el UID de la imatge seleccionada, si en aquell moment no hi ha cap imatge seleccionada, retorna un QString buit
     /// @return UID de la imatge seleccionada
    QString getCurrentImageUID();

    /// Ordena descendentment per la columna seleccionada
    void sort();

    /// Estableix el menú contextual del Widget
    void setContextMenu(QMenu *contextMenu);

    /// Retorna el QTreeWidget que conté el widget
    QTreeWidget* getQTreeWidget() const;

    /// Per cada element seleccionat Study/Series/Imatge retorna la seva DicomMask. Si tenim el cas que tenim seleccionat un estudi, i d'aquest estudi tenim
    /// seleccionada dos sèries o alguna de les imatges només ens retonarà l'estudi, ja que l'acció que s'hagi de fer sobre els elements seleccionats
    /// si l'estudi està seleccionant no té sentit que es faci sobre les sèries i les imatges, passa el mateix si tenim seleccionada un sèrie i imatges d'aquesta.
    /// Per exemple si tenim seleccionat un estudi i dos de les seves sèries i l'usuari indica que vol descarregar-lo no té sentit descarregar l'estudi i llavors les dos sèries
    //Crec que QStudyTreeWidget no hauria de tenir coneixement de que per fer qualsevol acció sobre una font DICOM com DICOMDIR, BD, PACS...  necessita
    //un DICOMMask amb DICOMSource, però ara mateix necessitem aquest mètode ja que retorna ens retorna aglutinat a tots elements seleccionats independentment
    //de que siguin Study, Series, Image en un objecte comú el DICOMMask, sinó les classe que utilitzen aquest QStudyTreeWidget haurien de comprovar quins són els
    //estudis seleccionats, series seleccionades i imatges seleccionades invocant un mètode per cada tipus d'objecte.
    QList<QPair<DicomMask, DICOMSource> > getDicomMaskOfSelectedItems();

    /// Assigna/Obté el nivell màxim fins el que es poden expandir els items que es mostren a QStudyTreeWiget, per defecte s'expandeix fins a nivell d'Image
    void setMaximumExpandTreeItemsLevel(QStudyTreeWidget::ItemTreeLevels maximumExpandTreeItemsLevel);
    QStudyTreeWidget::ItemTreeLevels getMaximumExpandTreeItemsLevel();

protected:
    /// Mostra el menu contextual
    /// @param Dades de l'event sol·licitat
    void contextMenuEvent(QContextMenuEvent *event);

signals:
    /// Signal cada vegada que seleccionem un estudi diferent
    void currentStudyChanged();

    /// Signal que s'emete quan canviem de sèrie seleccionada
    void currentSeriesChanged(const QString &seriesUID);

    /// Signal que s'emet quan canviem d'imatge seleccionada
    void currentImageChanged();

    /// Signal que s'emet quan s'ha fet un doble click a un estudi
    void studyDoubleClicked();

    /// Signal que s'emet quan s'ha fet un doble click a una sèrie
    void seriesDoubleClicked();

    /// Signal que s'emet quan s'ha fet un doble click a una imatge
    void imageDoubleClicked();

    /// Signal que s'emet quan es passa de tenir un item seleccionat a no tenir-ne cap de seleccionat
    void notCurrentItemSelected();

    ///Ens indica quan un usuari ha sol·licitat veure les sèries/imatges d'un estudi/sèrie
    void requestedSeriesOfStudy(Study *studyRequestedSeries);
    void requestedImagesOfSeries(Series *seriesRequestedImage);

public slots:
    /// Indique que ens marqui la sèrie amb el uid passat per paràmetre com a seleccionada
    /// @param SeriesUID Uid de la serie seleccionada en QSeriesListWidget
    void setCurrentSeries(QString seriesUID);

    /// Neteja el TreeView
    void clear();

private slots:
    /// Emet signal quan es selecciona un estudi o serie diferent a l'anterior
    void currentItemChanged(QTreeWidgetItem *current, QTreeWidgetItem *previous);

    /// Emet signal quan s'expandeix un item, i no té items fills
    void itemExpanded(QTreeWidgetItem *itemExpanded);

    /// Emet signal quan es col·lapsa un item, i no té items fills
    void itemCollapsed(QTreeWidgetItem *itemCollapsed);

    /// Emet signal qua es fa doble click sobre un item
    void doubleClicked(QTreeWidgetItem *, int);

private:
    /// Crea les connexions dels signals i slots
    void createConnections();

    /// Formata l'edat per mostrar per pantalla
    /// @param edat
    QString formatAge(const QString);

    /// Formata la data i hora passada a ISO 8601 extended (YYYY-MM-DD HH:MM:SS) Amb aquest format de data es pot ordenar els estudis per data/hora
    /// Si l'hora no té valor només retorna la data, i si ni Data i Hora tenen valor retorna string buit
    QString formatDateTime(const QDate &date, const QTime &time);

    /// Retorna l'objecte TreeWidgetItem, que pertany a un estudi cercem, per studUID i PACS, ja que
    /// un mateix estudi pot estar a més d'un PACS
    /// @param studyUID uid de l'estudi a cercar
    QTreeWidgetItem* getStudyQTreeWidgetItem(QString studyUID, DICOMSource studyDICOMSource);

    /// Retorna l'Objecte QTtreeWidgeItem que és de l'estudi i series
    QTreeWidgetItem* getSeriesQTreeWidgetItem(QString studyUID, QString seriesUID, DICOMSource seriesDICOMSource);

private:
    /// Ens indica si l'item passat és un estudi
    bool isItemStudy(QTreeWidgetItem *);

    /// Ens indica si l'item passat és una sèrie
    bool isItemSeries(QTreeWidgetItem *);

    /// Ens indica si l'item passat és una imatge
    bool isItemImage(QTreeWidgetItem *);

    /// Afegeix espais a l'esquerre del text fins arribar l'allargada passada per paràmetre
    QString paddingLeft(QString text, int length);

    /// Dona una sèrie emplena un QTreeWidgetItem en format sèrie
    /// @param informació de la serie
    QTreeWidgetItem* fillSeries(Series *serie);

    /// Retorna llista QTreeWidgetItem resultant dels estudis que té el pacient
    QList<QTreeWidgetItem*> fillPatient(Patient *);

    ///Inicialitza les variables necessàries del QWidget
    void initialize();

private:
    int m_nextIDICOMItemIDOfStudy;
    int m_nextDICOMItemIDOfSeries;
    int m_nextDICOMItemIDOfImage;

    QHash<int, Study*> m_addedStudiesByDICOMItemID;
    QHash<int, Series*> m_adddSeriesByDICOMItemID;
    QHash<int, Image*> m_addedImagesByDICOMItemID;

    /// Menu contextual
    QMenu *m_contextMenu;

    /// Strings per guardar valors de l'anterior element
    QString m_oldCurrentStudyUID, m_oldCurrentSeriesUID, m_OldInstitution;

    QString m_doubleClickedItemUID;

    /// Icones utilitzades com a root al TreeWidget
    QIcon m_openFolder, m_closeFolder, m_iconSeries;

     QStudyTreeWidget::ItemTreeLevels m_maximumExpandTreeItemsLevel;
};

}; // end namespace

#endif
