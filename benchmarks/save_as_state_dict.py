import sys, os

sys.path.append(os.path.dirname(os.path.dirname(os.path.realpath(__file__))))

from functools import partial
import argparse

import torch
import torch.nn as nn
import torch.nn.functional as F

import torch_pruning as tp
import engine.utils as utils
import registry
import numpy as np

parser = argparse.ArgumentParser()

parser.add_argument("--model_path", type=str, default=None, required=True)

args = parser.parse_args()

model = torch.load(args.model_path, map_location="cpu")
assert isinstance(model, nn.Module), f"Error {args.path} is not loaded as a nn.Module"

directory, filename = os.path.split(args.model_path)
filename = 'state_dict_' + filename
torch.save(model.state_dict(), os.path.join(directory, filename))
