#!/bin/sh

THISDIR="`pwd`"
LCDIR="${THISDIR}/librecad"
PIDIR="${THISDIR}/plugins"
RESOURCEDIR="${THISDIR}/os2/resources"
APPDATADIR="${THISDIR}/os2/appdata"
TSDIRLC="${LCDIR}/ts"
TSDIRPI="${PIDIR}/ts"
SPTDIR="${LCDIR}/support"
DESKTOPDIR="${THISDIR}/desktop"

cd "${THISDIR}"

# Postprocess for os2
mkdir -p "${RESOURCEDIR}"/fonts
mkdir -p "${RESOURCEDIR}"/patterns
cp "${SPTDIR}"/patterns/*.dxf "${RESOURCEDIR}"/patterns
cp "${SPTDIR}"/fonts/*.lff* "${RESOURCEDIR}"/fonts
find "${SPTDIR}"/library -type d | sed 's:^.*support/::' | xargs -IFILES  mkdir -p "${RESOURCEDIR}"/FILES
find "${SPTDIR}"/library -type f -iname *.dxf | sed 's/^.*support//' | xargs -IFILES  cp "${SPTDIR}"/FILES "${RESOURCEDIR}"/FILES


# copy desktop and appdata files to os2/appdata/
mkdir -p "${APPDATADIR}"
cp "${DESKTOPDIR}"/librecad.desktop "${APPDATADIR}"/
cp "${DESKTOPDIR}"/org.librecad.librecad.appdata.xml "${APPDATADIR}"/
