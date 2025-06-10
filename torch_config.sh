#!/bin/bash
# PyTorch Configuration for different variants
# This file defines the differences between start.sh and start.5090.sh

# Default configuration (for start.sh)
COMMENT_OUT_TORCH_REQUIREMENTS=false
INSTALL_PYTORCH_NIGHTLY=false
INCLUDE_TORCHSDE=false
COMFYUI_EXTRA_ARGS="--use-sage-attention"

# Override for 5090 variant if script name contains "5090"
if [[ "$0" == *"5090"* ]]; then
    COMMENT_OUT_TORCH_REQUIREMENTS=true
    INSTALL_PYTORCH_NIGHTLY=true
    INCLUDE_TORCHSDE=true
    # COMFYUI_EXTRA_ARGS already set to "--use-sage-attention" above
fi 