# shellcheck shell=bash

export XDG_STATE_HOME="${XDG_STATE_HOME:-"${HOME}/.local/state"}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-"${HOME}/.config"}"
export BLARG_TARGETS_STATE_DIR="${XDG_STATE_HOME}/pcrockett/blarg-targets"
