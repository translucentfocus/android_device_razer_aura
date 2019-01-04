## WIP TWRP device tree for Razer Phone 2 (2nd generation 'aura')

Add to `.repo/local_manifests/cheryl2.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/razer/aura" name="device/razer/aura" remote="translucentfocus" revision="android-8.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_aura-eng
make -j5 recoveryimage
```

# //TODO
Kernel sources are available at: 
