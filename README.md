# SRB2Kart-Snap
Based on [SRB2-Snap by Kyuyrii](https://github.com/Kyuyrii/SRB2-Snap/).
I recently [contributed](https://github.com/flathub/org.srb2.SRB2Kart/pull/69) to the [SRB2Kart Flatpak](https://flathub.org/en/apps/org.srb2.SRB2Kart)
(I have a [blog post](https://dev.anirudhsevugan.me/posts/srb2kart) I wrote about how it went if you're interested)
so I thought it would be a good idea to make an SRB2Kart snap!

[![srb2kart](https://snapcraft.io/srb2kart/badge.svg)](https://snapcraft.io/srb2kart)

## What happened to the other arches?
`i386`, `armhf`, and `riscv64` were all originally supported, but it turns out everything was just a big fakeout.
When building in QEMU, the gcc from the host would be called, which would be for the wrong arch.
So the `snapcraft` CLI would *think* it was building for `riscv64`, when in reality the output Snap was just a broken one
without the needed libs, with an `x64` binary...

And this was the same for both the `armhf` and `i386` binaries.
So yeah, the support was completely broken anyway, so I dropped it...

## Download builds from GitHub Actions
You should be able to download them fine, but if you cannot (no button appears), use [nightly.link](https://nightly.link) instead and paste the link
of the actions run in question (e.g, [https://github.com/A-Star100/SRB2Kart-Snap/actions/runs/23224075538](https://github.com/A-Star100/SRB2Kart-Snap/actions/runs/23224075538)).
