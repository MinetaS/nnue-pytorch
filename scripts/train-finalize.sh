#!/bin/sh

python3 serialize.py \
  --out-sha \
  --ft_optimize \
  --ft_optimize_data=/data/official-stockfish/master-binpacks/fishpack32.binpack \
  --ft_optimize_count=100000 \
  --l1=128 \
  --features=Full_Threats^ \
  "$1" -
