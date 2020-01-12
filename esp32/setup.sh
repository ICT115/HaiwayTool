#!bin/bash

if ! type xtensa-esp32-elf-gcc > /dev/null; then
    echo Looking for xtensa-esp32-elf-gcc
       if [ -d "xtensa-esp32-elf" ]; then
           export PATH=$PATH:`pwd`/xtensa-esp32-elf/bin/
       fi
fi
export ESP_IDF_PATH=`pwd`/esp-idf

cd app
make clean
make
rm build/espruino-esp32.elf
make app.tgz
cd ..
