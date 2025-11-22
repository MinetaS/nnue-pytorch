#!/bin/sh

python3 serialize.py \
  --out-sha \
  --ft_optimize \
  --ft_optimize_data=/data/official-stockfish/master-binpacks/fishpack32.binpack \
  --ft_optimize_count=1000000 \
  --l1=128 \
  --features=HalfKAv2_hm^ \
  "$1" -
