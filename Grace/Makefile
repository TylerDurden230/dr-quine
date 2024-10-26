NAME = Grace
KID = Grace_kid.c
SRC = Grace.c
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
	rm -f $(NAME) $(KID)
	if [ -f tmp_Grace ]; then rm -f tmp_Grace; fi

re: fclean all

test: all
	@echo "Grace test:"
	./Grace
	diff Grace.c Grace_kid.c
	@if [ $$? -eq 0 ]; then echo "$(GREEN)OK$(NC)"; else echo "$(RED)KO$(NC)"; fi
	@rm -f tmp_Grace

.PHONY: all clean fclean re test