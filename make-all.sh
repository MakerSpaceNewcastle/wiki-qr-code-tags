#!/usr/bin/env bash

# The OpenSCAD binary, set this appropriately
OPENSCAD="openscad"
# OPENSCAD="org.openscad.OpenSCAD"

# Make output directory
out="./out"
mkdir -p "$out"

# Build the main body and text parts once since they are the same for all tags
$OPENSCAD tag_body.scad -o "$out/0-body.stl"
$OPENSCAD tag_text.scad -o "$out/2-text.stl"

make-tag() {
  # Generate the URL to encode in the QR code
  url="https://wiki.makerspace.org.uk/$1"

  # Make output directory for this tag
  tag_out="$out/$1"
  mkdir -p "$tag_out"

  # Copy the common models into the tag output directory
  cp "$out/0-body.stl" "$tag_out/0-body.stl"
  cp "$out/2-text.stl" "$tag_out/2-text.stl"

  # Build the tag specific QR code model
  $OPENSCAD -D "url=\"$url\"" tag_qrcode.scad -o "$tag_out/1-qrcode.stl"
}

# Make tags for all of the pages
make-tag "equipment/laser_cutter"
make-tag "equipment/bambulab_p1s"
make-tag "equipment/prusa_mk3"
make-tag "equipment/duratool_desolder_station"
make-tag "equipment/axminster_bandsaw"
make-tag "equipment/record_power_drill_press"
make-tag "equipment/record_power_belt_and_disc_sander"
make-tag "equipment/metal_lathe"
