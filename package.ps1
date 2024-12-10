rm -rf install
cmake --install . --prefix install
cmake --install . --prefix install --component Dependencies
cd install
Copy-Item -Path C:\Qt\6.5.2\msvc2019_64\translations -Destination .\share\qtcreator\ -Recurse -Force
archivegen ../canmv-ide-windows-4.0.7-installer-archive.7z bin lib share
cd ../
python -u ../qt-creator/scripts/packageIfw.py -i C:\Qt\QtIFW-4.6.1 -v 4.0.7 -a canmv-ide-windows-4.0.7-installer-archive.7z canmv-ide-4.0.7
