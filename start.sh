#!/bin/bash

# Ensuring that the script stops if any command fails
set -e

# Exporting paths
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

# Modifying .c and .h files as per your requirements using sed
sed -i '' 's/sdl.h/SDL2\/SDL.h/g' {*.c,*.h}
sed -i '' 's/SDL2_gfx-1.0.1\/SDL2_gfxPrimitives.h/SDL2\/SDL2_gfxPrimitives.h/g' {*.c,*.h}

# Compiling the C files and linking them with SDL2
gcc wall.c formulas.c robot.c main.c -o main -lSDL2

# Running the compiled code
./main
