# This script fetches and builds VruiVTK

SET(VruiVTK_ROOT
  "${CMAKE_BINARY_DIR}/VruiVTK"
  )

SET(VruiVTK_CMAKE_ARGS
  -DVRUI_PKGCONFIG:PATH=${VRUI_ROOT}/pkgconfig
  -DVTK_DIR:PATH=${VTK_ROOT}/bld
  )

ExternalProject_Add(
  VruiVTK
  DEPENDS VRUI VTK
  PREFIX "${VruiVTK_ROOT}"
  STAMP_DIR "${VruiVTK_ROOT}/stamp"
  GIT_REPOSITORY "https://github.com/VruiVTK/VruiVTK.git"
  GIT_TAG "master"
  UPDATE_COMMAND ${GIT_EXECUTABLE} pull
  SOURCE_DIR "${VruiVTK_ROOT}/src"
  BINARY_DIR "${VruiVTK_ROOT}/bld"
  CMAKE_ARGS ${VruiVTK_CMAKE_ARGS}
  INSTALL_COMMAND ""
  )

