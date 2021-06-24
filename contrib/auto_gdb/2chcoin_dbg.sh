#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.2chcoincore/2chcoind.pid file instead
export LC_ALL=C

2chcoin_pid=$(<~/.2chcoincore/testnet3/2chcoind.pid)
sudo gdb -batch -ex "source debug.gdb" 2chcoind ${2chcoin_pid}
