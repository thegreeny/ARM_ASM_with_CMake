# Windows

## ARM GCC installieren

Webseite:
https://gnutoolchains.com/arm-eabi/

Nach z.B. C:\Toolchains\

**WICHTIG:** zu PATH hinzufügen (lassen)

## CMake vorbereiten
In den Unterordner _Build_ vorbereiten:
````
cmake -G"MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug -S . -B Build
````

## Kompilieren
In den Build-Ordner wechseln:
````
X:\Test Assembler>cd Build
````
Bauen
````
X:\Test Assembler\Build>cmake --build .
````

# Unix

## ARM GCC installieren

### Ubuntu
```
sudo apt install gcc-arm-none-eabi cmake
```

### Arch
```
yay -S gcc-arm-none-eabi-bin 
sudo pacman -S cmake
```

### macOS
```
brew install gcc-arm-embedded
```

## CMake vorbereiten

```
cmake -DCMAKE_BUILD_TYPE=Debug -S . -B Build
```

## Kompilieren
In den Build-Ordner wechseln:
```
cd Build
```

Bauen:
```
cmake --build .
```
