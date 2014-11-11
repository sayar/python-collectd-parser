#! /bin/bash

set -e

PYTHON_VERSION=$(python -c "import sys; print(''.join(str(v) for v in sys.version_info[:2]))")

SPECIFIC_REQUIREMENT="requirements.tests.py${PYTHON_VERSION}.txt"
if test -f "${SPECIFIC_REQUIREMENT}"
then
    pip install -r "${SPECIFIC_REQUIREMENT}"
fi

if test -f "requirements.txt"
then
    pip install -r "requirements.txt"
fi
