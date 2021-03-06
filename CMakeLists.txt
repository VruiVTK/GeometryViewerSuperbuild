CMAKE_MINIMUM_REQUIRED (VERSION 2.8)

PROJECT (GeometryViewerSuperbuild)

SET (CMAKE_MODULE_PATH
  "${CMAKE_CURRENT_SOURCE_DIR}/Projects"
  ${CMAKE_MODULE_PATH}
  )

INCLUDE_DIRECTORIES (
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}
  )

INCLUDE (ExternalProject)
SET (EP_BASE
  ${CMAKE_CURRENT_BINARY_DIR}
  )

# Build VRUI
INCLUDE (VRUI)

SET (VTK_RENDERING_BACKEND "OpenGL" CACHE STRING
  "Choose the VTK rendering backend.")

# Set the possible values of rendering backends for cmake-gui
SET_PROPERTY (CACHE VTK_RENDERING_BACKEND PROPERTY
  STRINGS "OpenGL;OpenGL2")

# Build VTK
INCLUDE (VTK)

# Build GeometryViewer
INCLUDE (GeometryViewer)
