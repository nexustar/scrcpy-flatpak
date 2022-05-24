# scrcpy-flatpak

## Overview

Building a Flatpak for `scrcpy` by
[Genymobile/scrcpy](https://github.com/Genymobile/scrcpy).

### References

* [GitHub: Genymobile/scrcpy](https://github.com/Genymobile/scrcpy)
* [Stack Overflow - Compile ADB from source](https://stackoverflow.com/q/56433447)
* [Google Android Core Sources](https://android.googlesource.com/platform/system/core/)
* [Google Android ADB Sources](https://android.googlesource.com/platform/system/adb/)
* [Android Build ADB](https://source.android.com/setup/build/adb)
* [Android actually building ADB](https://source.android.com/setup/build/building)

## Change Log

See [CHANGELOG.md](CHANGELOG.md)

## To-Do Tasks

See [TODO.todo.md](TODO.todo.md)

## Requirements

You will need to have the following installed on your machine building the
Flatpak.

* `flatpak`
* `flatpak-builder`

## Setup

You'll need to have the Flatpak Flathub main repository added. I prefer to add
it to the user, not the system/root.

```bash
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Build Steps

### install perbuilt
```
$ flatpak install scrcpy.flatpak
```

### How to build and install it

#### install dependencies
```
$ sudo apt install flatpak-builder
$ flatpak install flathub org.freedesktop.Platform//19.08 org.freedesktop.Sdk//19.08
```

#### Build
```
$ mkdir test
$ flatpak-builder test com.Genymobile.Scrcpy.json --force-clean
$ flatpak-builder --repo=repo --force-clean test com.Genymobile.Scrcpy.json
```
#### Install
```
$ flatpak --user remote-add --no-gpg-verify tutorial-repo repo
$ flatpak --user install tutorial-repo com.Genymobile.Scrcpy
```

### Run
```
$ flatpak run com.Genymobile.Scrcpy
```
