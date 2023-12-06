from pathlib import Path
import shutil
from utils import mkdir
from torchvision.models import resnet50


def get_args_parser(add_help=True):
    import argparse

    parser = argparse.ArgumentParser(description="ImageNet validation data restructure", add_help=add_help)

    parser.add_argument("--src-path", default="~/TUDelft/thesis/datasets/ImageNet/ILSVRC2012_img_val", type=str,
                        help="Original dataset folder path")
    parser.add_argument("--dest-path", default="~/TUDelft/thesis/datasets/ImageNet/train", type=str,
                        help="torchvision.datasets.ImageFolder destination root path")
    parser.add_argument("--labels-path", default="~/TUDelft/thesis/datasets/ImageNet/ILSVRC2012_devkit_t12/data/ILSVRC2012_validation_ground_truth.txt", type=str,
                        help="ground truth txt file path")

    return parser


def copy(src: Path, dest_root: Path, label: str) -> None:
    dest = dest_root.joinpath(str(label)).joinpath(src.name)
    shutil.copy(src, dest)


def main(args):
    src_root = Path(args.src_path.replace("~", str(Path.home())))
    dest_root = Path(args.dest_path.replace("~", str(Path.home())))
    labels_path = Path(args.labels_path.replace("~", str(Path.home())))

    with open(labels_path, "r") as f:
        labels = f.readlines()
    labels = [label.strip() for label in labels]

    for label in set(labels):
        mkdir(dest_root.joinpath(label))

    src_imgs = sorted(src_root.glob("*.JPEG"))

    i = 0
    for src, label in zip(src_imgs, labels):
        copy(src, dest_root, label)
        i += 1
        if i % 1000 == 0:
            print(f'{i} / 50000')


if __name__ == '__main__':
    args = get_args_parser().parse_args()
    main(args)

