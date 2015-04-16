# This script fetches and builds VTK

SET(VTK_ROOT
  ${CMAKE_BINARY_DIR}/VTK
  CACHE INTERNAL ""
  )

# NOTE: For now we only support Mac and Windows.
SET (VTK_CMAKE_ARGS
  -DBUILD_TESTING:BOOL=OFF
  -DBUILD_SHARED_LIBS:BOOL=OFF
  -DBUILD_EXAMPLES:BOOL=OFF
  -DModule_vtkRenderingExternal:BOOL=ON
  )

ExternalProject_Add(
  VTK
  PREFIX "${VTK_ROOT}"
  STAMP_DIR "${VTK_ROOT}/stamp"
  GIT_REPOSITORY "https://gitlab.kitware.com/vtk/vtk.git"
  GIT_TAG "2de2e2df05d9a6048cd25b8a65b803b06b30578c"
  #  UPDATE_COMMAND ${GIT_EXECUTABLE} pull
  SOURCE_DIR "${VTK_ROOT}/src"
  BINARY_DIR "${VTK_ROOT}/bld"
  CMAKE_ARGS "${VTK_CMAKE_ARGS}"
  INSTALL_COMMAND ""
  )
