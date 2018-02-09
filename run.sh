#!/bin/sh
set -x
HTMLFILE=$(cd ${WORKSPACE} && ls *.html)
for htmlf in ${HTMLFILE}
    do
    html-minifier --minify-js uglify-js --minify-css clean-css --keep-closing-slash ${WORKSPACE}/${htmlf} -o ${WORKSPACE}/${htmlf}
done
