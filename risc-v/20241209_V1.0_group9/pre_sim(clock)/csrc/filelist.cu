PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _112965_archive_1.so
_112965_archive_1.so : archive.3/_112965_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic  -o .//../simv.daidir//_112965_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_112965_archive_1.so $@





O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<
 

%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \
objs/udps/exIG1.o objs/udps/U7Vwg.o objs/udps/h8xSc.o objs/udps/IEZrF.o objs/udps/uYEPC.o  \
objs/udps/zL3We.o objs/udps/vCfas.o objs/udps/CjLsY.o objs/udps/gSqMj.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/a/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

