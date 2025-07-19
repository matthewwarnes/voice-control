# Alternative User Interface

Includes voicecommand, download, playvideo, and textcommand scripts

This requires:

* boost
* curl
* xterm
* espeak
* some other things

To install the dependencies, run:
```bash
sudo apt-get install -y libboost-dev libboost-regex-dev youtube-dl axel curl xterm libcurl4-gnutls-dev mpg123 flac sox
```

To install PiAUISuite:
```bash
git clone https://github.com/matthewwarnes/voice-control.git
cd voice-control
make
sudo make install
```

Adjust config:
The commands and hardware config should be in ~/.commands.conf

Run:
voicecontrol -c

Copyright

[GPLv3](https://tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3))

Steven Hickson
