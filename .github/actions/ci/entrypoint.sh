#!/bin/sh -l

echo ""
echo "Using dzil for CI test"
echo "------------------------"

dzil test

EXITCODE=$?

test $EXITCODE -eq 0 || echo "($EXITCODE) Test failed, check logs";

exit $EXITCODE