# Package

version       = "0.3.1"
author        = "Hidenobu Itsumura @dumblepytech1 as 'medy'"
description   = "A Nim query builder library inspired by Laravel/PHP and Orator/Python"
license       = "MIT"
srcDir        = "src"
backend       = "c"
bin           = @["command/dbtool"] # ここはパッケージの名前によって変わる
binDir        = "src/bin"
installExt    = @["nim"]
skipDirs      = @["command"]
# Dependencies

requires "nim >= 1.0.0"
requires "bcrypt >= 0.2.1"
requires "cligen >= 0.9.38"
requires "progress >= 1.1.1"