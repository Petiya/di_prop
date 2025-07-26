
# di_prop

**Author:** Nimantha Dias  
**Discord:** https://discord.gg/24aXWGnhQU

**Version:** 1.0.0  
**Framework:** GTA V  
**Game Version:** Cerulean  
**Script Type:** Lua  

---

## Description

`di_prop` is a lightweight and efficient GTA V resource that allows you to load props dynamically at pre-configured locations. Designed for seamless integration, this script can help developers add static props to enhance the immersive environment of their servers. 

---

## Features

- **Dynamic Prop Loading:** Automatically spawns props at defined coordinates.
- **Configurable Locations:** Easily set the locations, props, and heading values in the `config.lua` file.
- **Cleanup Management:** Ensures all props are cleaned up when the resource stops.
- **Resource-Friendly:** Optimized for performance with proper resource cleanup.

---

## Installation

1. Download the `di_prop` script and place it in your server's `resources` folder.
2. Ensure the following structure in the `di_prop` directory:
   ```
   di_prop/
   ├── fxmanifest.lua
   ├── config.lua
   └── client.lua
   ```
3. Add `ensure di_prop` to your server configuration file (`server.cfg`).
4. Restart your server or load the resource manually.


## Configuration

Modify the `config.lua` file to add or adjust prop locations:

### Example Configuration:

```lua
Config.CraftingLocations = {
    {
        coords = vector3(-1144.57, 4937.19, 222.27), -- Coordinates for the prop
        prop = 'prop_tablesaw_01',               -- Prop model to spawn
        heading = 160.16                         -- Heading of the prop
    },
    -- Add more props below
}
```

You can add as many props as needed by following the above structure.


## Usage

- The props will automatically load when the resource starts.
- All props will be cleaned up when the resource stops to maintain server integrity.

## Requirements

- **fx_version:** Cerulean
- **GTA V Game Version**

## Support

For support or suggestions, feel free to join the [Discord server](https://discord.gg/24aXWGnhQU).  
GitHub: [https://github.com/Petiya/di_theft](https://github.com/Petiya/di_prop)

QBCore Framework: https://qbcore.org

## Credits

Special thanks to **Nimantha Dias** for contributing to the script's development.
