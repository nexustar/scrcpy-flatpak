# scrcpy-flatpak
package scrcpy with flatpak

## install perbuilt
```
$ flatpak install scrcpy.flatpak
```

## How to build and install it

### install dependencies
```
$ sudo apt install flatpak-builder
$ flatpak install flathub org.freedesktop.Platform//18.08 org.freedesktop.Sdk//18.08
```
### Download files

adb file from https://developer.android.com/studio/releases/platform-tools : adb

### Build
```
$ mkdir test
$ flatpak-builder test com.Genymobile.Scrcpy.json --force-clean
$ flatpak-builder --repo=repo --force-clean test com.Genymobile.Scrcpy.json
```
### Install
```
$ flatpak --user remote-add --no-gpg-verify tutorial-repo repo
$ flatpak --user install tutorial-repo com.Genymobile.Scrcpy
```

## Run
```
$ flatpak run com.Genymobile.Scrcpy
```
