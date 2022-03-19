#!/bin/sh

set -e

export TESSERACT_SUPPORT_DIR=$CONDA_PREFIX/share/tesseract_support

echo TESSERACT_SUPPORT_DIR=$TESSERACT_SUPPORT_DIR

pytest
