FC=gfortran
CC=gcc
CFLAGS=-std=c99 -g
FFLAGS=-g

main: driver.o croutine.o allocate.o 
	$(FC) -o $@ $^

driver.o: driver.f90 allocate.o
	$(FC) $(FFLAGS) -c $<

allocate.o: allocate.f90
	$(FC) $(FFLAGS) -c $<

clean:
	rm -rf main driver.o croutine.o allocate.o allocator.mod

