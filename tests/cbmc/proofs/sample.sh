#!/bin/bash
cnt=0
for f in *; do
    if [ ! -d $f ]; then
        continue
    fi
    h=$(find $f -name "*_harness.c")
    m=$(find $f -name "Makefile")
    nm=$(grep -c '.' $m)
    nh=$(grep -c '.' $h)
    defs=$(grep 'DEFINES.*' $m)
    stubs=$(grep '.*PROOF_STUB.*' $m)
    if [[ $defs && $stubs ]]; then
        ((cnt=cnt+1))
        mt=$(tail +16 $m)
        ht=$(tail +16 $h)
        echo "$cnt - $f"
        read v
        echo -e "$mt\n\n\n"
        echo -e "$ht\n\n\n"
        
    fi
done