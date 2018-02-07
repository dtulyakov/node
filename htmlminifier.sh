#!/bin/sh
set -x
HTMLFILE=$(cd ${WORKSPACE}/DEB/html && ls *.html)
for htmlf in ${HTMLFILE}
    do
    html-minifier --minify-js uglify-js --minify-css clean-css --keep-closing-slash ${WORKSPACE}/DEB/html/${htmlf} -o ${WORKSPACE}/DEB/html/${htmlf}
done
