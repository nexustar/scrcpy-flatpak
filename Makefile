.PHONY: build install run uninstall

build:
	flatpak-builder test com.Genymobile.Scrcpy.yaml --force-clean
	flatpak-builder --repo=repo --force-clean test com.Genymobile.Scrcpy.yaml

test-install:
	flatpak --user remote-add --no-gpg-verify tutorial-repo repo
	flatpak --user install tutorial-repo com.Genymobile.Scrcpy --assumeyes

run:
	flatpak run com.Genymobile.Scrcpy

uninstall:
	flatpak uninstall com.Genymobile.Scrcpy --assumeyes --delete-data
	flatpak --user remote-delete tutorial-repo --force

package:
	flatpak build-bundle repo com.Genymobile.Scrcpy.flatpak com.Genymobile.Scrcpy

install: package
	flatpak --user install com.Genymobile.Scrcpy.flatpak --assumeyes

clean:
	rm -rf repo tags.lock tags.temp test tags com.Genymobile.Scrcpy.flatpak
