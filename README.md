# WoWHaxe

A proof of concept AddOn to showcase using [Haxe][haxe] to create AddOns for WoW.

## Acknowledgements

The wrapper code in `Wrapper.hx` was figured out by @vendethiel at the WoW AddOns Discord.

## Building

To work properly in WoW, this code needs to be compiled using Haxe 4.0.0.
Use the latest preview version and then build with `haxe build.hxml` from the root of this repository.

The generated Lua code will be found in `bin/main.lua`.

## License

Copyright (c) 2018 by Adam Hellberg.

This project is licensed under the MIT license, see the file `LICENSE` for more information.

[haxe]: https://haxe.org
