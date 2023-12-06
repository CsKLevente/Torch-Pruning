#python main.py --mode pretrain --dataset cifar10 --model resnet56 --lr 0.1 --total-epochs 200 --lr-decay-milestones 120,150,180
#
#python main.py --mode prune --model resnet56 --batch-size 128 --restore run/cifar10/pretrain/cifar10_resnet56.pth --dataset cifar10  --method group_sl --speed-up 2.0 --global-pruning --reg 5e-4 --output-dir run/s02 --sl-restore True
#python main.py --mode prune --model resnet56 --batch-size 128 --restore run/cifar10/pretrain/cifar10_resnet56.pth --dataset cifar10  --method group_sl --speed-up 3.0 --global-pruning --reg 5e-4 --output-dir run/s03 --sl-restore True
#python main.py --mode prune --model resnet56 --batch-size 128 --restore run/cifar10/pretrain/cifar10_resnet56.pth --dataset cifar10  --method group_sl --speed-up 4.0 --global-pruning --reg 5e-4 --output-dir run/s04 --sl-restore True
#python main.py --mode prune --model resnet56 --batch-size 128 --restore run/cifar10/pretrain/cifar10_resnet56.pth --dataset cifar10  --method group_sl --speed-up 5.0 --global-pruning --reg 5e-4 --output-dir run/s05 --sl-restore True
#python main.py --mode prune --model resnet56 --batch-size 128 --restore run/cifar10/pretrain/cifar10_resnet56.pth --dataset cifar10  --method group_sl --speed-up 7.0 --global-pruning --reg 5e-4 --output-dir run/s07 --sl-restore True
#python main.py --mode prune --model resnet56 --batch-size 128 --restore run/cifar10/pretrain/cifar10_resnet56.pth --dataset cifar10  --method group_sl --speed-up 10.0 --global-pruning --reg 5e-4 --output-dir run/s10 --sl-restore True

#python main.py --mode prune --model resnet20 --batch-size 128 --restore /home/koppany/TUDelft/thesis/git/CTKD/save/state_dicts/tea-res56-stu-res20/KD/CTKD/fold-1/resnet20_best.pth --dataset cifar100  --method group_sl --speed-up 1.11 --global-pruning --reg 5e-4 --output-dir run/KD_CTKD/su_1.11 --lr 0.005
#python main.py --mode prune --model resnet20 --batch-size 128 --restore /home/koppany/TUDelft/thesis/git/CTKD/save/state_dicts/tea-res56-stu-res20/KD/CTKD/fold-1/resnet20_best.pth --dataset cifar100  --method group_sl --speed-up 1.5 --global-pruning --reg 5e-4 --output-dir run/KD_CTKD/su_1.5 --lr 0.005
#python main.py --mode prune --model resnet20 --batch-size 128 --restore /home/koppany/TUDelft/thesis/git/CTKD/save/state_dicts/tea-res56-stu-res20/KD/CTKD/fold-1/resnet20_best.pth --dataset cifar100  --method group_sl --speed-up 2.0 --global-pruning --reg 5e-4 --output-dir run/KD_CTKD/su_2.0 --lr 0.005
#python main.py --mode prune --model resnet20 --batch-size 128 --restore /home/koppany/TUDelft/thesis/git/CTKD/save/state_dicts/tea-res56-stu-res20/KD/CTKD/fold-1/resnet20_best.pth --dataset cifar100  --method group_sl --speed-up 3.0 --global-pruning --reg 5e-4 --output-dir run/KD_CTKD/su_3.0 --lr 0.005


python main.py --mode pretrain --dataset cifar100 --model resnet20 --use_ctkd_models --lr 0.1 --total-epochs 200 --lr-decay-milestones 120,150,180
python main.py --mode prune --model resnet20 --use_ctkd_models --batch-size 128 --restore run/cifar100/pretrain/cifar100_resnet20.pth --dataset cifar100  --method group_sl --speed-up 1.11 --global-pruning --reg 5e-4 --output-dir run/ctkd_models/resnet20/su_1.11 --sl-restore True --lr 0.005
python main.py --mode prune --model resnet20 --use_ctkd_models --batch-size 128 --restore run/cifar100/pretrain/cifar100_resnet20.pth --dataset cifar100  --method group_sl --speed-up 1.5 --global-pruning --reg 5e-4 --output-dir run/ctkd_models/resnet20/su_1.5 --sl-restore True --lr 0.005
python main.py --mode prune --model resnet20 --use_ctkd_models --batch-size 128 --restore run/cifar100/pretrain/cifar100_resnet20.pth --dataset cifar100  --method group_sl --speed-up 2.0 --global-pruning --reg 5e-4 --output-dir run/ctkd_models/resnet20/su_2.0 --sl-restore True --lr 0.005
python main.py --mode prune --model resnet20 --use_ctkd_models --batch-size 128 --restore run/cifar100/pretrain/cifar100_resnet20.pth --dataset cifar100  --method group_sl --speed-up 3.0 --global-pruning --reg 5e-4 --output-dir run/ctkd_models/resnet20/su_3.0 --sl-restore True --lr 0.005

