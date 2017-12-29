#!/bin/bash

# Additional arguments are meant for flags like verbose and dryrun.
# For anything more complicated, just run p27gen.py by hand.
#
# This will work when run on my boxes where I have tn, p27-gen, and
# tn-src all in the same directory so that ../ gets me on my way to
# the others.
#
# Run setup.sh to create the python virtual environment (venv
# directory).

. venv/bin/activate
../p27-gen/p27gen.py --src ../tn-src/site-src --dst site/    \
		     --config ../tn-src/site-config/         \
		     $*
