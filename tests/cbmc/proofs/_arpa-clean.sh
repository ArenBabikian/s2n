#!/bin/bash
rm -f -r s2n_strcpy/arpa-test-logs
rm -f -r s2n_stuffer_erase_and_read/arpa-test-logs
rm -f -r s2n_realloc/arpa-test-logs
rm -f -r s2n_stuffer_free/arpa-test-logs

cd s2n_strcpy
make veryclean
cd ..