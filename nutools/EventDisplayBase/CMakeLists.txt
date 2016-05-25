
set( PACKAGE EventDisplayBase )
FILE( GLOB src_files *.cxx )

set( EVD_LIBS ${ART_FRAMEWORK_SERVICES_REGISTRY}
              ${ART_FRAMEWORK_CORE}
              art_Persistency_Common canvas_Persistency_Common
              ${ART_FRAMEWORK_IO_SOURCES}
              ${ART_FRAMEWORK_IO_ROOT}
              ${ART_FRAMEWORK_IO_ROOT_ROOTINPUT_SOURCE}
              ${ART_FRAMEWORK_PRINCIPAL}
              art_Persistency_Provenance canvas_Persistency_Provenance
              art_Utilities canvas_Utilities
              ${MF_MESSAGELOGGER}
              ${MF_UTILITIES}
              ${FHICLCPP}
              ${CETLIB}
              ${Boost_SYSTEM_LIBRARY}
              ${ROOT_EVE}
              ${ROOT_EG}
              ${ROOT_GX11}
              ${ROOT_TREEPLAYER}
              ${ROOT_GEOM}
              ${ROOT_GED}
              ${ROOT_RGL}
              ${ROOT_GUI}
              ${ROOT_CORE}
              ${ROOT_CINT}
              ${ROOT_RIO}
              ${ROOT_NET}
              ${ROOT_HIST}
              ${ROOT_GRAF}
              ${ROOT_GRAF3D}
              ${ROOT_GPAD}
              ${ROOT_TREE}
              ${ROOT_RINT}
              ${ROOT_POSTSCRIPT}
              ${ROOT_MATRIX}
              ${ROOT_PHYSICS}
              ${ROOT_MATHCORE}
              ${ROOT_THREAD} )

cet_rootcint( ${PACKAGE} )

art_make_library( LIBRARY_NAME ${PACKAGE}
                  SOURCE ${src_files} ${CMAKE_CURRENT_BINARY_DIR}/${PACKAGE}Cint.cc
                  LIBRARIES nusimdata_SimulationBase ${EVD_LIBS} )

set( EVD_SERVICE_LIBS ${PACKAGE} ${EVD_LIBS} )
simple_plugin( EventDisplay service ${EVD_SERVICE_LIBS} )
simple_plugin( ScanOptions  service ${EVD_SERVICE_LIBS} )
simple_plugin( Colors       service ${EVD_SERVICE_LIBS} )

install_headers()
install_fhicl()
install_source()