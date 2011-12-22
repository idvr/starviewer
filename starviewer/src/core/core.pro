# Fitxer generat pel gestor de qmake de kdevelop.
# -------------------------------------------
# Subdirectori relatiu al directori principal del projecte: ./src/core
# L'objectiu és una biblioteca:
FORMS += qlogviewerbase.ui \
    qcustomwindowleveldialogbase.ui \
    qtransferfunctioneditorbyvaluesbase.ui \
    qtransferfunctionintervaleditorbase.ui \
    qcinecontrollerbase.ui \
    qthickslabwidgetbase.ui \
    q2dviewerwidgetbase.ui \
    qreleasenotesbase.ui \
    qdicomdumpbrowserbase.ui \
    qviewerworkinprogresswidget.ui \
    qcustomwindowleveleditwidgetbase.ui \
    qtransferfunctioneditor2base.ui \
    qtransferfunctiongraphicalviewbase.ui \
    synchronizationeditionwidgetbase.ui \
    qdiagnosistestbase.ui \
    qdiagnosistestresultwidgetbase.ui \
    q2dviewerconfigurationscreenbase.ui

TRANSLATIONS += core_ca_ES.ts \
    core_es_ES.ts \
    core_en_GB.ts
HEADERS += extensionfactory.h \
    genericfactory.h \
    singleton.h \
    genericsingletonfactoryregister.h \
    extensionfactoryregister.h \
    extensionmediator.h \
    displayableid.h \
    extensionmediatorfactory.h \
    extensionmediatorfactoryregister.h \
    installextension.h \
    itkImageToVTKImageFilter.h \
    itkVTKImageToImageFilter.h \
    mathtools.h \
    itkQtAdaptor.h \
    harddiskinformation.h \
    logging.h \
    deletedirectory.h \
    volume.h \
    volumereader.h \
    volumepixeldatareader.h \
    volumepixeldatareadervtkgdcm.h \
    volumepixeldatareaderitkgdcm.h \
    volumerepository.h \
    identifier.h \
    repositorybase.h \
    repository.h \
    q2dviewer.h \
    q3dmprviewer.h \
    q3dviewer.h \
    qviewer.h \
    patient.h \
    series.h \
    study.h \
    q3dorientationmarker.h \
    zoomtool.h \
    qlogviewer.h \
    strokesegmentationmethod.h \
    itkErfcLevelSetFunction.h \
    itkErfcLevelSetImageFilter.h \
    itkVolumeCalculatorImageFilter.h \
    vtkAtamaiPolyDataToImageStencil2.h \
    displayshutter.h \
    image.h \
    imageoverlay.h \
    imageoverlayreader.h \
    dicomtagreader.h \
    patientfiller.h \
    patientfillerstep.h \
    patientfillerinput.h \
    dicomfileclassifierfillerstep.h \
    imagefillerstep.h \
    presentationstatefillerstep.h \
    extensioncontext.h \
    keyimagenotefillerstep.h \
    temporaldimensionfillerstep.h \
    createinformationmodelobject.h \
    patientbrowsermenu.h \
    patientbrowsermenubasicitem.h \
    patientbrowsermenuextendeditem.h \
    patientbrowsermenulist.h \
    qcustomwindowleveldialog.h \
    qwindowlevelcombobox.h \
    mhdfileclassifierstep.h \
    orderimagesfillerstep.h \
    toolregistry.h \
    toolmanager.h \
    toolconfiguration.h \
    tool.h \
    toolproxy.h \
    tooldata.h \
    referencelinestool.h \
    referencelinestooldata.h \
    imageplane.h \
    slicingtool.h \
    translatetool.h \
    voxelinformationtool.h \
    windowleveltool.h \
    seedtool.h \
    magicroitool.h \
    rotate3dtool.h \
    screenshottool.h \
    synchronizetool.h \
    synchronizetooldata.h \
    windowlevelpresetstool.h \
    transdifferencetool.h \
    transdifferencetooldata.h \
    drawer.h \
    drawerprimitive.h \
    drawerpolygon.h \
    drawerline.h \
    drawertext.h \
    drawerpolyline.h \
    drawerbitmap.h \
    polylineroitool.h \
    ovalroitool.h \
    polylinetemporalroitool.h \
    polylinetemporalroitooldata.h \
    distancetool.h \
    editortool.h \
    editortooldata.h \
    windowlevelpresetstooldata.h \
    qviewercinecontroller.h \
    qcinecontroller.h \
    hoverpoints.h \
    qcolorspinbox.h \
    qtransferfunctioneditorbyvalues.h \
    qtransferfunctionintervaleditor.h \
    shadewidget.h \
    transferfunction.h \
    transferfunctionio.h \
    qtransferfunctioneditor.h \
    qtransferfunctioneditorbygradient.h \
    accumulator.h \
    averageaccumulator.h \
    minimumaccumulator.h \
    maximumaccumulator.h \
    vtkProjectionImageFilter.h \
    slicingkeyboardtool.h \
    qthickslabwidget.h \
    erasertool.h \
    drawerpoint.h \
    seedtooldata.h \
    cursor3dtool.h \
    cursor3dtooldata.h \
    angletool.h \
    drawercrosshair.h \
    starviewerapplication.h \
    viewerslayout.h \
    q2dviewerwidget.h \
    hangingprotocol.h \
    hangingprotocollayout.h \
    hangingprotocolsloader.h \
    hangingprotocolsrepository.h \
    hangingprotocolmanager.h \
    hangingprotocolmask.h \
    hangingprotocolimageset.h \
    hangingprotocoldisplayset.h \
    hangingprotocolxmlreader.h \
    ambientvoxelshader.h \
    contourvoxelshader.h \
    directilluminationvoxelshader.h \
    voxelshader.h \
    hdrcolor.h \
    trilinearinterpolator.h \
    vector3.h \
    vtkVolumeRayCastVoxelShaderCompositeFunction.h \
    sphereuniformpointcloudgenerator.h \
    obscurancemainthread.h \
    obscurancethread.h \
    obscurancevoxelshader.h \
    vtk4dlinearregressiongradientestimator.h \
    combiningvoxelshader.h \
    vtkVolumeRayCastSingleVoxelShaderCompositeFunction.h \
    obscurance.h \
    viewpointgenerator.h \
    thumbnailcreator.h \
    nonclosedangletool.h \
    abortrendercommand.h \
    roitool.h \
    statswatcher.h \
    clippingplanestool.h \
    representationslayer.h \
    toolrepresentation.h \
    settings.h \
    settingsregistry.h \
    settingsparser.h \
    defaultsettings.h \
    coresettings.h \
    settingsaccesslevelfilereader.h \
    glew.h \
    glxew.h \
    wglew.h \
    shortcuts.h \
    shortcutmanager.h \
    volumebuilder.h \
    volumebuilderfromcaptures.h \
    dicomattribute.h \
    dicomvalueattribute.h \
    dicomsequenceattribute.h \
    dicomsequenceitem.h \
    dicomtag.h \
    dicomwriter.h \
    dicomwriterdcmtk.h \
    dicomfilegenerator.h \
    dicomdictionary.h \
    dicomimagefilegenerator.h \
    dicomvaluerepresentationconverter.h \
    imageorientationoperationsmapper.h \
    anatomicalplane.h \
    patientorientation.h \
    imageorientation.h \
    copydirectory.h \
    qreleasenotes.h \
    qdicomdumpbrowser.h \
    applicationversionchecker.h \
    filter.h \
    vtkthresholdfilter.h \
    dynamicmatrix.h \
    screenmanager.h \
    colortransferfunction.h \
    transferfunctiontemplate.h \
    opacitytransferfunction.h \
    qscreendistribution.h \
    dicomdumpdefaulttags.h \
    dicomdumpdefaulttagsloader.h \
    dicomdumpdefaulttagsreader.h \
    dicomdumpdefaulttagsrepository.h \
    dicomdumpdefaulttagsrestriction.h \
    customwindowlevel.h \
    customwindowlevelsloader.h \
    customwindowlevelsreader.h \
    customwindowlevelsrepository.h \
    volumereaderjob.h \
    asynchronousvolumereader.h \
    qviewerworkinprogresswidget.h \
    qviewercommand.h \
    applyhangingprotocolqviewercommand.h \
    renderqviewercommand.h \
    volumepixeldata.h \
    customwindowlevelswriter.h \
    qcustomwindowleveleditwidget.h \
    applicationstylehelper.h \
    changesliceqviewercommand.h \
    qtransferfunctioneditor2.h \
    transferfunctioneditor.h \
    transferfunctioneditorcommands.h \
    qtransferfunctionview.h \
    qtransferfunctiongraphicalview.h \
    qcolortransferfunctiongraphicalview.h \
    qcolortransferfunctiongraphicalviewnode.h \
    qopacitytransferfunctiongraphicalview.h \
    qopacitytransferfunctiongraphicalviewnode.h \
    qopacitytransferfunctiongraphicalviewline.h \
    machineidentifier.h \
    dicomsource.h \
    pacsdevice.h \
    machineinformation.h \
    diagnosistest.h \
    diagnosistestresult.h \
    applicationupdatechecker.h \
    diagnosistestfactory.h \
    diagnosistestfactoryregister.h \
    automaticsynchronizationtool.h \
    automaticsynchronizationtooldata.h \
    firewallaccess.h \
    firewallaccesstest.h \
    automaticsynchronizationmanager.h \
    synchronizationeditionwidget.h \
    slicingwheeltool.h \
    qmessageboxautoclose.h \
    commandlineoption.h \
    applicationversiontest.h \
    imageoverlayregionfinder.h \
    systeminformation.h \
    systemrequeriments.h \
    systemrequerimentstest.h \
    synchronizationwidgetbutton.h \
    magnifyingglasstool.h \
    magnifyingglasstooldata.h \
    qdiagnosistest.h \
    qdiagnosistestresultwidget.h \
    rundiagnosistest.h \
    q2dviewerconfigurationscreen.h \
    circletool.h \
    diagnosistestresultwriter.h

SOURCES += extensionmediator.cpp \
    displayableid.cpp \
    mathtools.cpp \
    harddiskinformation.cpp \
    deletedirectory.cpp \
    volume.cpp \
    volumereader.cpp \
    volumepixeldatareader.cpp \
    volumepixeldatareadervtkgdcm.cpp \
    volumepixeldatareaderitkgdcm.cpp \
    volumerepository.cpp \
    identifier.cpp \
    repositorybase.cpp \
    repository.cpp \
    q2dviewer.cpp \
    q3dmprviewer.cpp \
    q3dviewer.cpp \
    qviewer.cpp \
    patient.cpp \
    series.cpp \
    study.cpp \
    q3dorientationmarker.cpp \
    zoomtool.cpp \
    editortool.cpp \
    editortooldata.cpp \
    qlogviewer.cpp \
    strokesegmentationmethod.cpp \
    itkErfcLevelSetFunction.cpp \
    itkErfcLevelSetImageFilter.cpp \
    itkVolumeCalculatorImageFilter.cpp \
    vtkAtamaiPolyDataToImageStencil2.cxx \
    displayshutter.cpp \
    image.cpp \
    imageoverlay.cpp \
    imageoverlayreader.cpp \
    dicomtagreader.cpp \
    patientfiller.cpp \
    patientfillerstep.cpp \
    patientfillerinput.cpp \
    dicomfileclassifierfillerstep.cpp \
    imagefillerstep.cpp \
    presentationstatefillerstep.cpp \
    extensioncontext.cpp \
    keyimagenotefillerstep.cpp \
    temporaldimensionfillerstep.cpp \
    createinformationmodelobject.cpp \
    patientbrowsermenu.cpp \
    patientbrowsermenubasicitem.cpp \
    patientbrowsermenuextendeditem.cpp \
    patientbrowsermenulist.cpp \
    qcustomwindowleveldialog.cpp \
    qwindowlevelcombobox.cpp \
    mhdfileclassifierstep.cpp \
    orderimagesfillerstep.cpp \
    toolregistry.cpp \
    toolmanager.cpp \
    toolconfiguration.cpp \
    tool.cpp \
    toolproxy.cpp \
    tooldata.cpp \
    referencelinestool.cpp \
    referencelinestooldata.cpp \
    imageplane.cpp \
    translatetool.cpp \
    slicingtool.cpp \
    voxelinformationtool.cpp \
    windowleveltool.cpp \
    seedtool.cpp \
    magicroitool.cpp \
    rotate3dtool.cpp \
    screenshottool.cpp \
    synchronizetool.cpp \
    synchronizetooldata.cpp \
    windowlevelpresetstool.cpp \
    transdifferencetool.cpp \
    transdifferencetooldata.cpp \
    drawer.cpp \
    drawerprimitive.cpp \
    drawerpolygon.cpp \
    drawerline.cpp \
    drawertext.cpp \
    drawerpolyline.cpp \
    drawerbitmap.cpp \
    polylineroitool.cpp \
    ovalroitool.cpp \
    polylinetemporalroitool.cpp \
    polylinetemporalroitooldata.cpp \
    distancetool.cpp \
    windowlevelpresetstooldata.cpp \
    qviewercinecontroller.cpp \
    qcinecontroller.cpp \
    hoverpoints.cpp \
    qcolorspinbox.cpp \
    qtransferfunctioneditorbyvalues.cpp \
    qtransferfunctionintervaleditor.cpp \
    shadewidget.cpp \
    transferfunction.cpp \
    transferfunctionio.cpp \
    qtransferfunctioneditor.cpp \
    qtransferfunctioneditorbygradient.cpp \
    accumulator.cpp \
    vtkProjectionImageFilter.cxx \
    slicingkeyboardtool.cpp \
    qthickslabwidget.cpp \
    erasertool.cpp \
    drawerpoint.cpp \
    seedtooldata.cpp \
    cursor3dtool.cpp \
    cursor3dtooldata.cpp \
    angletool.cpp \
    drawercrosshair.cpp \
    viewerslayout.cpp \
    q2dviewerwidget.cpp \
    hangingprotocol.cpp \
    hangingprotocollayout.cpp \
    hangingprotocolsloader.cpp \
    hangingprotocolsrepository.cpp \
    hangingprotocolmanager.cpp \
    hangingprotocolmask.cpp \
    hangingprotocolimageset.cpp \
    hangingprotocoldisplayset.cpp \
    hangingprotocolxmlreader.cpp \
    ambientvoxelshader.cpp \
    contourvoxelshader.cpp \
    directilluminationvoxelshader.cpp \
    voxelshader.cpp \
    trilinearinterpolator.cpp \
    vtkVolumeRayCastVoxelShaderCompositeFunction.cxx \
    sphereuniformpointcloudgenerator.cpp \
    obscurancemainthread.cpp \
    obscurancethread.cpp \
    obscurancevoxelshader.cpp \
    vtk4dlinearregressiongradientestimator.cpp \
    combiningvoxelshader.cpp \
    vtkVolumeRayCastSingleVoxelShaderCompositeFunction.cxx \
    obscurance.cpp \
    viewpointgenerator.cpp \
    thumbnailcreator.cpp \
    nonclosedangletool.cpp \
    abortrendercommand.cpp \
    roitool.cpp \
    statswatcher.cpp \
    clippingplanestool.cpp \
    representationslayer.cpp \
    toolrepresentation.cpp \
    settings.cpp \
    settingsregistry.cpp \
    settingsparser.cpp \
    defaultsettings.cpp \
    coresettings.cpp \
    settingsaccesslevelfilereader.cpp \
    glew.c \
    shortcuts.cpp \
    shortcutmanager.cpp \
    volumebuilder.cpp \
    volumebuilderfromcaptures.cpp \
    dicomattribute.cpp \
    dicomvalueattribute.cpp \
    dicomsequenceattribute.cpp \
    dicomsequenceitem.cpp \
    dicomtag.cpp \
    dicomwriter.cpp \
    dicomwriterdcmtk.cpp \
    dicomfilegenerator.cpp \
    dicomimagefilegenerator.cpp \
    dicomvaluerepresentationconverter.cpp \
    imageorientationoperationsmapper.cpp \
    anatomicalplane.cpp \
    patientorientation.cpp \
    imageorientation.cpp \
    copydirectory.cpp \
    qreleasenotes.cpp \
    qdicomdumpbrowser.cpp \
    applicationversionchecker.cpp \
    filter.cpp \
    vtkthresholdfilter.cpp \
    dynamicmatrix.cpp \
    screenmanager.cpp \
    colortransferfunction.cpp \
    opacitytransferfunction.cpp \
    qscreendistribution.cpp \
    dicomdumpdefaulttags.cpp \
    dicomdumpdefaulttagsloader.cpp \
    dicomdumpdefaulttagsreader.cpp \
    dicomdumpdefaulttagsrepository.cpp \
    dicomdumpdefaulttagsrestriction.cpp \
    customwindowlevel.cpp \
    customwindowlevelsloader.cpp \
    customwindowlevelsreader.cpp \
    customwindowlevelsrepository.cpp \
    volumereaderjob.cpp \
    asynchronousvolumereader.cpp \
    qviewerworkinprogresswidget.cpp \
    qviewercommand.cpp \
    applyhangingprotocolqviewercommand.cpp \
    renderqviewercommand.cpp \
    volumepixeldata.cpp \
    customwindowlevelswriter.cpp \
    qcustomwindowleveleditwidget.cpp \
    applicationstylehelper.cpp \
    changesliceqviewercommand.cpp \
    qtransferfunctioneditor2.cpp \
    transferfunctioneditor.cpp \
    transferfunctioneditorcommands.cpp \
    qtransferfunctionview.cpp \
    qtransferfunctiongraphicalview.cpp \
    qcolortransferfunctiongraphicalview.cpp \
    qcolortransferfunctiongraphicalviewnode.cpp \
    qopacitytransferfunctiongraphicalview.cpp \
    qopacitytransferfunctiongraphicalviewnode.cpp \
    qopacitytransferfunctiongraphicalviewline.cpp \
    machineidentifier.cpp \
    dicomsource.cpp \
    pacsdevice.cpp \
    machineinformation.cpp \
    diagnosistestresult.cpp \
    applicationupdatechecker.cpp \
    automaticsynchronizationtool.cpp \
    automaticsynchronizationtooldata.cpp \
    firewallaccess.cpp \
    firewallaccesstest.cpp \
    automaticsynchronizationmanager.cpp \
    synchronizationeditionwidget.cpp \
    slicingwheeltool.cpp \
    qmessageboxautoclose.cpp \
    commandlineoption.cpp \
    applicationversiontest.cpp \
    imageoverlayregionfinder.cpp \
    systeminformation.cpp \
    systemrequeriments.cpp \
    systemrequerimentstest.cpp \
    synchronizationwidgetbutton.cpp \
    magnifyingglasstool.cpp \
    magnifyingglasstooldata.cpp \
    qdiagnosistest.cpp \
    qdiagnosistestresultwidget.cpp \
    rundiagnosistest.cpp \
    q2dviewerconfigurationscreen.cpp \
    circletool.cpp \
    diagnosistestresultwriter.cpp
win32 {
    HEADERS += windowsfirewallaccess.h \
               windowssysteminformation.h
    SOURCES += windowsfirewallaccess.cpp \
               windowssysteminformation.cpp
}
TEMPLATE = lib
DESTDIR = ./
CONFIG += staticlib
include(../corelibsconfiguration.inc)
include(../itk.inc)
include(../gdcm.inc)
include(../vtk.inc)
include(../dcmtk.inc)
include(../log4cxx.inc)
include(../compilationtype.inc)
include(../translations.inc)
include(../threadweaver.inc)
QT += xml \
    network \
    webkit \
    script \
    xmlpatterns \
    opengl
