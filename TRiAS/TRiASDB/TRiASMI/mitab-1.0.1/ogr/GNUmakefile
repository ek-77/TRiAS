#
# CPL (Common Portability Library) makefile
#

OBJ	=	ogr_srsnode.o ogrcurve.o ogrfeature.o ogrfeaturedefn.o \
		ogrgeometry.o ogrgeometrycollection.o ogrgeometryfactory.o \
		ogrlinearring.o ogrlinestring.o ogrmultilinestring.o \
		ogrmultipoint.o ogrmultipolygon.o ogrpoint.o ogrpolygon.o \
		ogrspatialreference.o ogrsurface.o ogrutils.o \
		ogrlayer.o ogrsfdriverregistrar.o ogrfielddefn.o \
		ogr_srs_proj4.o ogrdatasource.o ogrsfdriver.o

LIB	=	ogr.a

include ../GNUmake.opt

default:	$(LIB)

clean:
	rm -f *.o $(LIB)

$(LIB): $(OBJ)
	rm -f $(LIB)
	$(AR) rc $(LIB) $(OBJ)

