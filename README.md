# AcerSwift14Setup

This repository accumulates my personal preferences regarding Gnome as well as a few desktop-applications in the form of shell-commands, as to be reproducible with minimal effort. These settings make for a multi-workspace "tiling-like" environment that's devoid of needless distractions and makes use of the full screen-space, since it abstains from superflous eye-candy like bars or window-gaps.

Currently, I'm running Fedora on my Swift 14, containing the AMD Ryzen 7 8845HS; the GPU-drivers are working great, as long as one disables PSR (Panel Self Refresh; a power-saving feature which can cause crashes):

`vi /etc/default/grub`:


```
...
GRUB_CMDLINE_LINUX="rhgb quiet amdgpu.psr=0"
...
```

then, apply using

```
sudo grub2-mkconfig -o /etc/grub2-efi.cfg
```

Other than that, I also swapped out the WiFi/BT-card for an Intel AX210, as to ensure stability and hibernation-compatibility. Simply closing the lid overnight only drains a few percent of battery-life, so I would say that this device is rather Linux-friendly, seeing how all other features also work flawlessly.
