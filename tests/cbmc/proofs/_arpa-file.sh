#!/bin/bash
cnt=0
for f in */Makefile.arpa; do
    n=$(grep -c '.*s2n_stuffer_network_order.c' $f)
    if [[ $n ]]; then
        echo "$f"
        
    fi
done