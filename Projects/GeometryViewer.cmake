# This script fetches and builds GeometryViewer

SET(GeometryViewer_ROOT
  "${CMAKE_BINARY_DIR}/GeometryViewer"
  )

SET(GeometryViewer_CMAKE_ARGS
  -DVRUI_PKGCONFIG_DIR:PATH=${VRUI_ROOT}/pkgconfig
  -DVTK_DIR:PATH=${VTK_ROOT}/bld
  -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_BINARY_DIR}
  )

ExternalProject_Add(
  GeometryViewer
  DEPENDS VRUI VTK
  PREFIX "${GeometryViewer_ROOT}"
  STAMP_DIR "${GeometryViewer_ROOT}/stamp"
  GIT_REPOSITORY "https://github.com/VruiVTK/GeometryViewer.git"
  GIT_TAG "master"
  #  UPDATE_COMMAND ${GIT_EXECUTABLE} pull
  SOURCE_DIR "${GeometryViewer_ROOT}/src"
  BINARY_DIR "${GeometryViewer_ROOT}/bld"
  CMAKE_ARGS ${GeometryViewer_CMAKE_ARGS}
  )

