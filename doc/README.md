2chcoin Core
==========

This is the official reference wallet for 2chcoin digital currency and comprises the backbone of the 2chcoin peer-to-peer network. You can [download 2chcoin Core](https://www.2chcoin.org/downloads/) or [build it yourself](#building) using the guides below.

Running
---------------------
The following are some helpful notes on how to run 2chcoin on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/2chcoin-qt` (GUI) or
- `bin/2chcoind` (headless)

### Windows

Unpack the files into a directory, and then run 2chcoin-qt.exe.

### OS X

Drag 2chcoin-Qt to your applications folder, and then run 2chcoin-Qt.

### Need Help?

* See the [2chcoin documentation](https://docs.2chcoin.org)
for help and more information.
* See the [2chcoin Developer Documentation](https://2chcoin-docs.github.io/) 
for technical specifications and implementation details.
* Ask for help on [2chcoin Nation Discord](http://2chcoinchat.org)
* Ask for help on the [2chcoin Forum](https://2chcoin.org/forum)

Building
---------------------
The following are developer notes on how to build 2chcoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The 2chcoin Core repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- Source Code Documentation ***TODO***
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [2chcoin Forum](https://2chcoin.org/forum), in the Development & Technical Discussion board.
* Discuss on [2chcoin Nation Discord](http://2chcoinchat.org)

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
