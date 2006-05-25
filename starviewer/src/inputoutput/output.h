/***************************************************************************
 *   Copyright (C) 2005 by Grup de Gr�fics de Girona                       *
 *   http://iiia.udg.es/GGG/index.html?langu=uk                            *
 *                                                                         *
 *   Universitat de Girona                                                 *
 ***************************************************************************/
#ifndef UDGOUTPUT_H
#define UDGOUTPUT_H

#include "volume.h"
// itk
#include <itkImageFileWriter.h>
#include <itkImageSeriesWriter.h>
#include <itkRescaleIntensityImageFilter.h>
// qt
#include <QObject>

namespace udg {

/**
    Operacions d'escriptura

@author Grup de Gr�fics de Girona  ( GGG )
*/
class Output : public QObject
{
Q_OBJECT
public:
    Output();
    ~Output();

    /// Desa un volum en un format de fitxer donat
    bool saveFile(const char *fileName);

    /// Desa un volum en una s�rie d'arxius ( png, bmp, tiff , jpg ). Si slice == -1, guarda totes les llesques altrament nom�s en guarda la indicada
    bool saveSeries(const char *fileName , int slice = -1 );
    
    /// Assigna el volum a escriure
    void setInput(Volume* data);  

signals:
    /// Indica el progr�s en % de la lectura del fitxer
    void progress( int );    

private:
    typedef Volume::ItkImageType ImageType;
    typedef itk::ImageFileWriter< ImageType >  WriterType;
    typedef WriterType::Pointer    WriterPointerType;
    
    typedef itk::Image< unsigned char , 3 > RescaleImageType;
    typedef itk::RescaleIntensityImageFilter< ImageType , RescaleImageType >    RescaleFilterType;
    // declaraci� dels tipus per als escriptors de s�ries de fitxers
    typedef ImageType::PixelType ImageSeriesPixelType;
    typedef itk::Image< unsigned char , 2 > ImageSeriesOutputType;
    typedef itk::ImageSeriesWriter< RescaleImageType, ImageSeriesOutputType > ImageSeriesWriterType;
    typedef ImageSeriesWriterType::Pointer ImageSeriesWriterPointerType;

    /// L'escriptor est�ndar de volums
    WriterPointerType    m_writer;

    /// L'escriptor de s�ries 
    ImageSeriesWriterPointerType m_seriesWriter;
    
    /// Les dades a escriure
    Volume* m_volumeData;
};

};  //  end  namespace udg 

#endif
