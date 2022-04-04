##
## MAKEFILE FOR SEMANTIC ANALYZER / PARSER
##

.PHONY: clean strip

# Set the default target. When you make with no arguments,
# this will be the target built.
COMPILER = dcc
PRODUCTS = $(COMPILER)
default: $(PRODUCTS)

# Set up the list of source and object files
SRCS = ast.cc ast_decl.cc ast_expr.cc ast_stmt.cc ast_type.cc errors.cc utility.cc main.cc

# OBJS can deal with either .cc or .c files listed in SRCS
OBJS = y.tab.o lex.yy.o $(patsubst %.cc, %.o, $(filter %.cc,$(SRCS))) $(patsubst %.c, %.o, $(filter %.c, $(SRCS)))

JUNK = *~ *.o lex.yy.c dpp.yy.c y.tab.c y.tab.h *.core core *~

# Define the tools we are going to use
CC= g++
LD = g++
LEX = flex
YACC = bison

# Set up the necessary flags for the tools


CFLAGS = -g -Wall -Wno-unused -Wno-sign-compare

# The -d flag tells lex to set up for debugging. Can turn on/off by
# setting value of global yy_flex_debug inside the scanner itself
LEXFLAGS = -d


YACCFLAGS = -dvty


# LIBS = -lc -lm -ll ( DONT UMCOMMENT IT !)

# BELOW ARE THE RULES FOR VARIOUS PARTS OF THE TARGET

.yy.o: $*.yy.c
	$(CC) $(CFLAGS) -c -o $@ $*.cc

lex.yy.c: scanner.l parser.y y.tab.h
	$(LEX) $(LEXFLAGS) scanner.l

y.tab.o: y.tab.c
	$(CC) $(CFLAGS) -c -o y.tab.o y.tab.c

y.tab.h y.tab.c: parser.y
	$(YACC) $(YACCFLAGS) parser.y
.cc.o: $*.cc
	$(CC) $(CFLAGS) -c -o $@ $*.cc

# THIS IS THE RULE TO BUILD THE COMPILER

$(COMPILER) : $(OBJS)
	$(LD) -o $@ $(OBJS) $(LIBS)



strip : $(PRODUCTS)
	strip $(PRODUCTS)
	rm -rf $(JUNK)



depend:
	makedepend -- $(CFLAGS) -- $(SRCS)

clean:
	@rm -f $(JUNK) y.output $(PRODUCTS)