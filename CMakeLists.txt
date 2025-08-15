cmake_minimum_required(VERSION 3.16)

project(Project_Hospital_2 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appProject_Hospital_2
    main.cpp
)

qt_add_qml_module(appProject_Hospital_2
    URI Project_Hospital_2
    VERSION 1.0
    QML_FILES
        Main.qml
        MainPanel.qml
        LeftPanel.qml
        RightPanel.qml
    RESOURCES
        Asset/EndSurgury.png
        Asset/Archiving.png
        Asset/Back.png
        Asset/ClockWithoutNumbers.png
        Asset/Conference.png
        Asset/DateWithoutNumbers.png
        Asset/HIS.png
        Asset/Negatoscope.png
        Asset/Next.png
        Asset/NotesResult.png
        Asset/PACS.png
        Asset/Pause.png
        Asset/Power.png
        Asset/Routing.png
        Asset/Start.png
        Asset/L_Reset.png
        Asset/R_BoubarsLOGO.png
        icons.qrc
        SOURCES cameraframgenerator.h cameraframgenerator.cpp
        SOURCES generatorhandler.h generatorhandler.cpp
        SOURCES imageprovider.h imageprovider.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appProject_Hospital_2 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appProject_Hospital_2
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appProject_Hospital_2
    PRIVATE Qt6::Quick
)
target_link_libraries(appProject_Hospital_2 PRIVATE Qt6::Core)

include(GNUInstallDirs)
install(TARGETS appProject_Hospital_2
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

find_package(OpenCV REQUIRED)
target_include_directories(appProject_Hospital_2 PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(appProject_Hospital_2 PRIVATE ${OpenCV_LIBS})
target_link_libraries(appProject_Hospital_2 PRIVATE Qt6::Core)
target_link_libraries(appProject_Hospital_2 PRIVATE Qt6::Core)
