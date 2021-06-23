#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.2chcoincore/dashd.pid file instead
export LC_ALL=C

dash_pid=$(<~/.2chcoincore/testnet3/dashd.pid)
sudo gdb -batch -ex "source debug.gdb" dashd ${dash_pid}
