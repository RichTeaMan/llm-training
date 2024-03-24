#!/bin/bash

set -e

source .venv/bin/activate

time python3 small-llm.py "$@""
