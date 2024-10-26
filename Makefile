NAME = Colleen
SRC = Colleen.c
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
	if [ -f tmp_Colleen ]; then rm -f tmp_Colleen; fi

re: fclean all

test: all
	@echo "Colleen test:"
	./Colleen > tmp_Colleen
	diff Colleen.c tmp_Colleen
	@if [ $$? -eq 0 ]; then echo "$(GREEN)OK$(NC)"; else echo "$(RED)KO$(NC)"; fi
	@rm -f tmp_Colleen

.PHONY: all clean fclean re test