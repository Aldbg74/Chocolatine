##
## EPITECH PROJECT, 2024
## Chocolatine
## File description:
## Makefile
##

SRC	=	$(wildcard *.c)	\

OBJ	=	$(SRC:.c=.o)

CC	=	gcc

EXEC	=	illegal

CFLAGS	+=	-Wall -g3

all:	build	clean

build:	${OBJ}	gertrude
	$(CC) -o $(EXEC) $(OBJ) $(CFLAGS)

clean:
	rm -f vgcore.* $(OBJ) *.gch

fclean:	clean
	rm -f $(EXEC)

re:	fclean	all

gertrude:
	@echo -e "\n\n\033[3mGertrude-CLI - Makefile creation tool\033[0m\n"

.PHONY:	all	build	clean	fclean	re
