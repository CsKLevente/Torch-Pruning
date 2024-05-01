
python main.py --mode prune_progressive --model resnet20 --use_ctkd_models --batch-size 128 --dataset cifar100 \
  --method group_sl --global-pruning --reg 5e-4 --sl-lr 0.001 --sl-total-epochs 50 --sl-lr-decay-milestones 30,40 \
  --total-epochs 150 --lr-decay-milestones 60,80,100,120,140 --iterative-steps 50 \
  --output-dir run/ctkd_models/resnet20/progressive_pruning/iterative_steps_50


