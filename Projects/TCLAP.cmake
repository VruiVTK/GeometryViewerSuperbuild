# This script fetches and builds TCLAP

SET (TCLAP_ROOT
  ${CMAKE_BINARY_DIR}/TCLAP
  CACHE INTERNAL ""
  )

ExternalProject_Add (
  TCLAP
  PREFIX "${TCLAP_ROOT}"
  STAMP_DIR "${TCLAP_ROOT}/stamp"
  URL "http://sourceforge.net/projects/tclap/files/tclap-1.2.1.tar.gz/download"
  URL_HASH MD5=eb0521d029bf3b1cc0dcaa7e42abf82a
  UPDATE_COMMAND ""
  SOURCE_DIR "${TCLAP_ROOT}/src"
  CONFIGURE_COMMAND ${TCLAP_ROOT}/src/configure --prefix=${TCLAP_ROOT}/bld
  BUILD_IN_SOURCE 1
  )

