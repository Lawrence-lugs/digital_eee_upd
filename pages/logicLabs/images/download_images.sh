#!/usr/bin/env bash
# Run this script from your LOCAL machine (not inside the devcontainer)
# It downloads all lab images into this directory.
# Usage: bash download_images.sh

set -e
cd "$(dirname "$0")"

UA="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
REF="https://classes.up-microlab.org/"

download() {
  local url="$1"
  local file="$2"
  echo -n "Downloading $file ... "
  curl -sL --max-time 30 -A "$UA" -H "Referer: $REF" -o "$file" "$url" \
    && echo "OK" || echo "FAILED"
}

download "https://classes.up-microlab.org/images/9/90/1432s2425lab1-2.png.png"       "1432s2425lab1-2.png.png"
download "https://classes.up-microlab.org/images/b/b0/AnalogStickk.gif"              "AnalogStickk.gif"
download "https://classes.up-microlab.org/images/8/81/MarioSprites.gif"              "MarioSprites.gif"
download "https://classes.up-microlab.org/images/c/c0/UdlrTranslation.gif"           "UdlrTranslation.gif"
download "https://classes.up-microlab.org/images/thumb/e/ef/Alu_figma.png/300px-Alu_figma.png" "300px-Alu_figma.png"
download "https://classes.up-microlab.org/images/thumb/0/09/AluLab2.png/800px-AluLab2.png"     "800px-AluLab2.png"
download "https://classes.up-microlab.org/images/thumb/b/bc/DecodedTopandbot.png/600px-DecodedTopandbot.png" "600px-DecodedTopandbot.png"
download "https://classes.up-microlab.org/images/5/59/Eee143flipFlopFlavors.gif"     "Eee143flipFlopFlavors.gif"
download "https://classes.up-microlab.org/images/f/fd/Eee143lab4template.png"        "Eee143lab4template.png"
download "https://classes.up-microlab.org/images/b/b3/Eee143lab5movingdot.gif"       "Eee143lab5movingdot.gif"
download "https://classes.up-microlab.org/images/2/25/Eee143lab6keyboard.gif"        "Eee143lab6keyboard.gif"
download "https://classes.up-microlab.org/images/thumb/1/10/Lab6_graphicsController_wireframe.png/300px-Lab6_graphicsController_wireframe.png" "300px-Lab6_graphicsController_wireframe.png"

echo ""
echo "Done. Files:"
ls -lh .
