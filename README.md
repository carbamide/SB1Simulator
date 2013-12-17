## Purpose
According to Motorola -- "The affordable, wearable mobile device designed for every retail associate."

This is all fine and well, but they don't ship an emulator / simulator for the device.  This is irritating.

Enter SB1 Simulator.

## Technology
The SB1 Simulator's WebView is layer backed.  This gives it the ability to simulate the screen of an actual SB1.  

The SB1 Simulator is locked at the screen size of an actual SB1 device.  

The SB1 Simulator provides direct access to the WebInspector.  This is done by accessing private Apple methods and may break at any time.

## Keybindings
CMD+O - Open File  
CMD+R - Refresh File

The best way I've found to test if you're in the simulator or the actual device is thus -

```
if (navigator.platform == "MacIntel") {
    alert("Scanning will not function in the simulator.");
}
```
