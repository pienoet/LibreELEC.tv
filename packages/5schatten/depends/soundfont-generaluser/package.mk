# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present 5schatten (https://github.com/5schatten)

PKG_NAME="soundfont-generaluser"
PKG_VERSION="1.471"
PKG_SHA256="4203835164766f428c4926c097c9ea58dae431c7fb8f9dbe277b92d80da45ec2"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://www.schristiancollins.com/generaluser.php"
PKG_URL="https://www.dropbox.com/s/4x27l49kxcwamp5/GeneralUser_GS_$PKG_VERSION.zip"
PKG_DEPENDS_TARGET=""
PKG_SECTION="audio"
PKG_LONGDESC="GeneralUser GS is a GM and GS compatible SoundFont bank for composing, playing MIDI files, and retro gaming."
PKG_TOOLCHAIN="manual"

pre_unpack() {
  mkdir -p $PKG_BUILD
}

pre_make_target() {
  mv "$BUILD/GeneralUser GS $PKG_VERSION"/* $PKG_BUILD/
  rm -rf "$BUILD/GeneralUser GS $PKG_VERSION"
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/share/soundfonts
  cp GeneralUser*$PKG_VERSION.sf2 $INSTALL/usr/share/soundfonts/GeneralUser.sf2
}

