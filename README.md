According to Motorola -- "The affordable, wearable mobile device designed for every retail associate."

This is all fine and well, but they don't ship an emulator / simulator for the device.  This is irritating.

Enter SB1 Simulator.  It's simply a WebView that opens a WebInspector (Private class - not App Store safe).  This WebView is layer backed to simulate the SB1's e-ink display.

The SB1 Simulator is locked at the screen size of an actual SB1.

CMD+O - Open File
CMD+R - Refresh File

The best way I've found to test if you're in the simulator or the actual device is thus -
```
if (navigator.platform == "MacIntel") {
    alert("Scanning will not function in the simulator.");
}
```