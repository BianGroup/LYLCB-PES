FC = ifort
FFLAGS = -O3 -I../mod
LIBS = -L../lib -lpes
SRC = main.f90
OBJ = $(SRC:.f90=.o)
a.out : $(OBJ) 
	$(FC) $(FFLAGS) $(MOD) -o a.out $(OBJ) $(LIBS)
%.o : %.f90
	$(FC) -c $(FFLAGS) $(MOD) $<
clean:
	rm -f *.o *.mod

