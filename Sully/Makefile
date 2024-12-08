NAME = Sully
SRC = Sully.c
CC = gcc
CFLAGS = -Wall -Wextra -Werror

GREEN = \033[0;32m
BLUE = \033[0;34m
CYAN = \033[0;36m
MAGENTA = \033[0;35m
RED = \033[0;31m
NC = \033[0m

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(SRC)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)
	find . -type f ! -name 'Sully.c' ! -name 'Makefile' -delete
	if [ -d tmp ]; then rm -rf tmp; fi

re: fclean all

test: all
	@echo "$(CYAN)--- Sully test ---$(NC)"
	@echo "$(MAGENTA)test1$(NC): "
	mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; ls -al | grep Sully | wc -l
	@mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; count=$$(ls -al | grep Sully | wc -l); \
	if [ $$count -eq 13 ]; then echo "$(GREEN)OK$(NC)"; else echo "$(RED)KO$(NC)"; fi
	@echo "$(MAGENTA)test2$(NC): "
	cd tmp/; diff ../Sully.c Sully_5.c; diff ../Sully.c Sully_4.c; diff Sully_5.c Sully_0.c 

	@rm -rf tmp

.PHONY: all clean fclean re test