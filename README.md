# Giganima

Reverse engineering to remove ads.

## Requirements

* [Android Emulator](https://www.genymotion.com/)
  * _And create on device (obvious)_
* [Android Tools](http://tools.android.com/)
  * _adb, fastboot and systrace_
* [Apktool](https://ibotpeaches.github.io/Apktool/)
* [Signapk Setup](https://gist.github.com/Placidina/e362dacb8ce5623ab10a436f8c3e3bba)

## Makefile

* `make build` - Build decompiled apk
  * _Default output `build/giganime.apk` not signed and `build/signed/giganime.apk` signed apk_
* `make debug` - Build decompiled apk and send to emulator
* `make clean` - Remove directory `src` and `build`
* `make decompile` - Execute `clean` and decompile apk