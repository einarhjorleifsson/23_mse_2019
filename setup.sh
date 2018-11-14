# Copy directories
cp -rp Muppet_HCR/HCR/Model .
cp -rp Muppet_HCR/HCR/Plaice/Files .
cp -rp Muppet_HCR/HCR/Plaice/HockeyEstAcf 0Base
# Compile the program
cd Model
admb muppet
rm muppet.cpp
rm muppet.htp
rm muppet.obj
cd ..
# Copy compiled program into base
cp -p Model/muppet 0Base/.
# Copy the biorule into folder
cp -p Files/plaiceprognosis.dat.biorule 0Base/plaiceprognosis.dat
