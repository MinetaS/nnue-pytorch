#!/bin/sh

case "$1" in
  *.ckpt)
    echo "Resuming from the checkpoint: $1"
    resume_option="--resume-from-checkpoint=$1"
    ;;
  *.pt)
    echo "Resuming from the model: $1"
    resume_option="--resume-from-model=$1"
    ;;
esac

python train.py \
  /data/linrock/dual-nnue/hse-v1/dfrc99-16tb7p-eval-filt-v2.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/leela96-filt-v2.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test60-novdec2021-12tb7p-filter-v6-dd.min-mar2023.unmin.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test77-nov2021-2tb7p.no-db.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test77-dec2021-16tb7p.no-db.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test77-jan2022-2tb7p.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test78-jantomay2022-16tb7p-filter-v6-dd.min-mar2023.unmin.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test78-juntosep2022-16tb7p-filter-v6-dd.min-mar2023.unmin.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test79-apr2022-16tb7p.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test79-may2022-16tb7p-filter-v6-dd.min-mar2023.unmin.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test80-apr2022-16tb7p.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test80-may2022-16tb7p.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test80-jun2022-16tb7p-filter-v6-dd.min-mar2023.unmin.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test80-jul2022-16tb7p.v6-dd.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test80-sep2022-16tb7p-filter-v6-dd.min-mar2023.unmin.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/dual-nnue/hse-v1/test80-nov2022-16tb7p-v6-dd.min.high-simple-eval-1k.min-v2.binpack \
  /data/linrock/test80-2022/test80-2022-08-aug-16tb7p.v6-dd.min.binpack \
  /data/linrock/test80-2022/test80-2022-10-oct-16tb7p.v6-dd.binpack \
  /data/linrock/test80-2022/test80-2022-12-dec-16tb7p.min.binpack \
  /data/linrock/test80-2023/test80-2023-01-jan-16tb7p.v6-sk20.min.binpack \
  /data/linrock/test80-2023/test80-2023-02-feb-16tb7p.v6-dd.min.binpack \
  /data/linrock/test80-2023/test80-2023-03-mar-2tb7p.v6-sk16.min.binpack \
  /data/linrock/test80-2023/test80-2023-04-apr-2tb7p.v6-sk16.min.binpack \
  /data/linrock/test80-2023/test80-2023-05-may-2tb7p.v6.min.binpack \
  /data/linrock/test80-2023/test80-2023-06-jun-2tb7p.min-v2.binpack \
  /data/linrock/test80-2023/test80-2023-07-jul-2tb7p.min-v2.binpack \
  /data/linrock/test80-2023/test80-2023-08-aug-2tb7p.v6.min.binpack \
  /data/linrock/test80-2023/test80-2023-09-sep-2tb7p.binpack \
  /data/linrock/test80-2023/test80-2023-10-oct-2tb7p.binpack \
  /data/linrock/test80-2023/test80-2023-11-nov-2tb7p.min-v2.binpack \
  /data/linrock/test80-2023/test80-2023-12-dec-2tb7p.min-v2.binpack \
  /data/linrock/test80-2024/test80-2024-01-jan-2tb7p.min-v2.v6.binpack \
  /data/linrock/test80-2024/test80-2024-02-feb-2tb7p.min-v2.v6.binpack \
  /data/linrock/test80-2024/test80-2024-03-mar-2tb7p.min-v2.v6.binpack \
  /data/linrock/test80-2024/test80-2024-04-apr-2tb7p.min-v2.v6.binpack \
  --threads=4                           \
  --gpus=0,                             \
  --max_epochs=400                      \
  --num-workers=64                      \
  --batch-size=16384                    \
  --features=Full_Threats^              \
  --l1=128                              \
  --no-wld-fen-skipping                 \
  --start-lambda=1.0                    \
  --end-lambda=0.6992605384421289       \
  --gamma=0.9942746303116422            \
  --lr=0.0012181558724738395            \
  --in-scaling=317.54982869522763       \
  --out-scaling=379.8040378799748       \
  --in-offset=269.50654301142134        \
  --out-offset=253.51483568025657       \
  --pow-exp=2.4829519732155125          \
  --random-fen-skipping=3               \
  --simple-eval-skipping=931            \
  --network-save-period=10              \
  --compile-backend=cudagraphs          \
  $resume_option
