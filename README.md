# Maker Space wiki QR code tags

Small 3D printable QR code plates that link to the wiki for attaching to things.

## What do I need?

- Bash
- OpenSCAD

## How do I do it?

1. Add/edit/modify/mutilate the list in [`make-all.sh`](./make-all.sh) as required
1. `./make-all.sh`
1. In Bambu Studio, import all three files in the directory of the tag you want to print
1. Select "Yes, load as one multi-part object"
1. Switch to "Object" view in the left hand side bar
1. Set materials appropriately for each layer
1. Flip the model so that it prints with the QR code and text face down
1. Slice and verify the QR code works and is correct (just use your phone camera pointed at the screen)
1. Print
1. ???
1. Profit
