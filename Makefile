.PHONY: build install run

build:
	flatpak-builder test com.Genymobile.Scrcpy.yaml --force-clean
	flatpak-builder --repo=repo --force-clean test com.Genymobile.Scrcpy.yaml

install:
	flatpak --user remote-add --no-gpg-verify tutorial-repo repo
	flatpak --user install tutorial-repo com.Genymobile.Scrcpy

run:
	flatpak run com.Genymobile.Scrcpy
