## WIP TWRP device tree for Razer Phone (2nd generation 'cheryl2')

Add to `.repo/local_manifests/cheryl2.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/razer/cheryl2" name="device/razer/cheryl2" remote="translucentfocus" revision="android-8.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_cheryl2-eng
make -j5 recoveryimage
```

Kernel sources are available at: 
