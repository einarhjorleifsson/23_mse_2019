# run.sh
cd 0Base
./muppet -nox -ind iceplaice.dat.opt
./muppet -nox -ind iceplaice.dat.opt -mcmc 1e5 -mcscale -mcsave 200
./muppet -mceval -ind iceplaice.dat.prog
