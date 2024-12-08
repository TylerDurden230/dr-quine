NAME = Sully
SRC = Sully.c
CC = gcc
CFLAGS = -Wall -Wextra -Werror

GREEN = \033[0;32m
RED = \033[0;31m
NC = \033[0m # No Color

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(SRC)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)
	find . -type f ! -name 'Sully.c' ! -name 'Makefile' -delete

re: fclean all

test: all
	@echo "Sully test:"
	./Sully
	
.PHONY: all clean fclean re test