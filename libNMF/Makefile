#################################################################################
#--------------------------------Makefile---------------------------------------#
#									   	#
#	NMF Library							   	#
#									   	#
#	Note: 	All object files are created in the source folder		#
#		The libraries are created in the folder given by LIBFOLDER	#
#		Please make sure the folder in LIBFOLDER exists			#
#										#
#		For creating the shared library add '-fPIC' to GCCFLAGS		#
#									   	#
#	make lib	create libnnmf.a				   	#
#	make shared	create shared library libnnmf.so		   	#
#	make clean	delete library and object files			   	#
#									   	#
#									   	#
#									   	#
#################################################################################

#Variables

COMPILER='gcc'
LIBFOLDER='lib'
GCCFLAGS=-Wall -Wextra -Iinclude/ -g

# for creating the shared library use:
#GCCFLAGS=-fPIC -Wall -Wextra -Iinclude/


all: lib

lib:          checkarguments.o   cpmidx_double.o  loadmatrix.o  nmfdriver.o  nmf_pg.o        randnumber.o \
	calculatemaxchange.o calculatemaxchange_singleprec.o checkmatrices.o   nmf_als.o     nmf_mu.o nmf_mu_singleprec.o    outputtiming.o  setdefaultopts.o \
	calculatenorm.o   calculatenorm_singleprec.o              generatematrix.o  nmf_alspg.o   nmf_neals.o  pg_subprob_h.o pg_subprob_w.o   storematrix.o \
	calculatesvd.o 
	ar rcs $(LIBFOLDER)/libnnmf.a     cpmidx_double.o      checkarguments.o     loadmatrix.o  nmfdriver.o  nmf_pg.o \
	  randnumber.o calculatemaxchange.o  calculatemaxchange_singleprec.o checkmatrices.o   nmf_als.o     nmf_mu.o   nmf_mu_singleprec.o  outputtiming.o \
	  setdefaultopts.o calculatenorm.o  calculatenorm_singleprec.o  generatematrix.o  nmf_alspg.o   nmf_neals.o  pg_subprob_h.o pg_subprob_w.o\
	  storematrix.o calculatesvd.o 

shared: lib
	      $(COMPILER) -shared -Wl,-soname,libnnmf.so -o $(LIBFOLDER)/libnnmf.so checkarguments.o cpmidx_double.o    loadmatrix.o  nmfdriver.o  nmf_pg.o \
		randnumber.o calculatemaxchange.o calculatemaxchange_singleprec.o checkmatrices.o  nmf_als.o     nmf_mu.o   nmf_mu_singleprec.o  outputtiming.o \
		setdefaultopts.o calculatenorm.o  calculatenorm_singleprec.o  generatematrix.o  nmf_alspg.o   nmf_neals.o  pg_subprob_h.o pg_subprob_w.o\
		storematrix.o calculatesvd.o 



calculatesvd.o: calculatesvd.c include/calculatesvd.h
	      $(COMPILER) $(GCCFLAGS) -c calculatesvd.c -c


checkarguments.o: checkarguments.c include/checkarguments.h
	      $(COMPILER) $(GCCFLAGS) -c checkarguments.c -c

cpmidx_double.o: cpmidx_double.c include/cpmidx_double.h
	      $(COMPILER) $(GCCFLAGS) -c cpmidx_double.c -c

loadmatrix.o: loadmatrix.c include/loadmatrix.h
	      $(COMPILER) $(GCCFLAGS) -c loadmatrix.c -c

nmfdriver.o: nmfdriver.c include/nmfdriver.h
	      $(COMPILER) $(GCCFLAGS) -c nmfdriver.c -c

nmf_pg.o: nmf_pg.c include/nmf_pg.h
	      $(COMPILER) $(GCCFLAGS) -c nmf_pg.c -c

randnumber.o: randnumber.c include/randnumber.h
	      $(COMPILER) $(GCCFLAGS) -c randnumber.c -c

calculatemaxchange.o:	calculatemaxchange.c include/calculatemaxchange.h
	      $(COMPILER) $(GCCFLAGS) -c calculatemaxchange.c -c

calculatemaxchange_singleprec.o: calculatemaxchange_singleprec.c include/calculatemaxchange_singleprec.h
	      $(COMPILER) $(GCCFLAGS) -c calculatemaxchange_singleprec.c -c

checkmatrices.o: checkmatrices.c include/checkmatrices.h
	      $(COMPILER) $(GCCFLAGS) -c checkmatrices.c -c

nmf_als.o: nmf_als.c include/nmf_als.h
	      $(COMPILER) $(GCCFLAGS) -c nmf_als.c -c

nmf_mu.o: nmf_mu.c include/nmf_mu.h
	      $(COMPILER) $(GCCFLAGS) -c nmf_mu.c -c

nmf_mu_singleprec.o: nmf_mu_singleprec.c include/nmf_mu_singleprec.h
	      $(COMPILER) $(GCCFLAGS) -c nmf_mu_singleprec.c -c

outputtiming.o: outputtiming.c include/outputtiming.h
	      $(COMPILER) $(GCCFLAGS) -c outputtiming.c -c

setdefaultopts.o: setdefaultopts.c include/setdefaultopts.h
	      $(COMPILER) $(GCCFLAGS) -c setdefaultopts.c -c

calculatenorm.o: calculatenorm.c include/calculatenorm.h
	      $(COMPILER) $(GCCFLAGS) -c calculatenorm.c -c

calculatenorm_singleprec.o: calculatenorm_singleprec.c include/calculatenorm_singleprec.h
	      $(COMPILER) $(GCCFLAGS) -c calculatenorm_singleprec.c -c

generatematrix.o: generatematrix.c include/generatematrix.h
	      $(COMPILER) $(GCCFLAGS) -c generatematrix.c -c

nmf_alspg.o: nmf_alspg.c include/nmf_alspg.h
	      $(COMPILER) $(GCCFLAGS) -c nmf_alspg.c -c

nmf_neals.o: nmf_neals.c include/nmf_neals.h
	      $(COMPILER) $(GCCFLAGS) -c nmf_neals.c -c

pg_subprob_h.o: pg_subprob_h.c include/pg_subprob_h.h
	      $(COMPILER) $(GCCFLAGS) -c pg_subprob_h.c -c

pg_subprob_w.o: pg_subprob_w.c include/pg_subprob_w.h
	      $(COMPILER) $(GCCFLAGS) -c pg_subprob_w.c -c

storematrix.o: storematrix.c include/storematrix.h
	      $(COMPILER) $(GCCFLAGS) -c storematrix.c -c



clean:
	rm -f $(LIBFOLDER)/libnnmf.so $(LIBFOLDER)/libnnmf.a   cpmidx_double.o       checkarguments.o    loadmatrix.o  nmfdriver.o  nmf_pg.o        randnumber.o \
	calculatemaxchange.o calculatemaxchange_singleprec.o checkmatrices.o   nmf_als.o     nmf_mu.o  nmf_mu_singleprec.o   outputtiming.o  setdefaultopts.o \
	calculatenorm.o   calculatenorm_singleprec.o         generatematrix.o  nmf_alspg.o   nmf_neals.o  pg_subprob_h.o pg_subprob_w.o   storematrix.o \
	calculatesvd.o
