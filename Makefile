CC = gcc
CFLAGS = -Wall -Wextra -Werror               

GREEN = \033[0;32m
RED = \033[0;31m
CYAN = \033[0;36m
MAGENTA = \033[0;35m
YELLOW = \033[0;33m
BLUE = \033[0;34m
NC = \033[0m

ASCII_ART = "\n$(MAGENTA)     _                       _            \n  __| |_ __       __ _ _   _(_)_ __   ___ \n / _\` | '__|____ / _\` | | | | | '_ \\ / _ \\\ \n| (_| | | |_____| (_| | |_| | | | | |  __/\n \\__,_|_|        \\__, |\\__,_|_|_| |_|\\___|\n                    |_|$(NC) \n\n"

all: ascii_art colleen grace sully

ascii_art:
	@echo $(ASCII_ART)
	@sleep 1

colleen: Colleen

Colleen: Colleen.c
	@echo "$(YELLOW)compiling Colleen...$(NC)"
	$(CC) $(CFLAGS) -o Colleen Colleen.c
	@sleep 0.5

grace: Grace

Grace: Grace.c
	@echo "$(YELLOW)compiling Grace...$(NC)"
	$(CC) $(CFLAGS) -o Grace Grace.c
	@sleep 0.5

sully: Sully

Sully: Sully.c
	@echo "$(YELLOW)compiling Sully...$(NC)"
	$(CC) $(CFLAGS) -o Sully Sully.c
	@sleep 0.5

clean:
	@rm -f *.o

fclean: clean
	@echo "$(YELLOW)cleaning...$(NC)"
	@sleep 1
	@rm -f Colleen Grace Sully
	@if [ -f tmp_colleen ]; then rm -f tmp_colleen; fi
	@if [ -f Grace_kid.c ]; then rm -f Grace_kid.c; fi
	@if [ -d tmp ]; then rm -rf tmp; fi
	@echo "$(GREEN)cleaned$(NC)"

re: fclean all

test: ascii_art colleen_test grace_test sully_test

colleen_test: colleen
	@echo "$(CYAN)--- Colleen test ---$(NC)"
	@if [ -f tmp_Colleen ]; then rm -f tmp_Colleen; fi
	./Colleen > tmp_Colleen
	diff Colleen.c tmp_Colleen
	@sleep 1
	@if [ $$? -eq 0 ]; then echo "$(GREEN)OK$(NC)"; else echo "$(RED)KO$(NC)"; fi
	@rm -f tmp_Colleen
	@sleep 1.5

grace_test: grace
	@echo "$(CYAN)--- Grace test ---$(NC)"
	@./Grace
	diff Grace.c Grace_kid.c
	@if [ $$? -eq 0 ]; then echo "$(GREEN)OK$(NC)"; else echo "$(RED)KO$(NC)"; fi
	@rm -f Grace_kid.c
	@sleep 1.5

sully_test: sully	
	@echo "$(CYAN)--- Sully test ---$(NC)"
	@echo "$(MAGENTA)test1$(NC): "
	mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; ls -al | grep Sully | wc -l
	@mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully; count=$$(ls -al | grep Sully | wc -l); \
	if [ $$count -eq 13 ]; then echo "$(GREEN)OK$(NC)"; else echo "$(RED)KO$(NC)"; fi
	@sleep 1
	@echo "$(MAGENTA)test2$(NC): "
	cd tmp/; diff ../Sully.c Sully_5.c; diff ../Sully.c Sully_4.c; diff Sully_5.c Sully_0.c 

.PHONY: all ascii_art colleen grace sully clean fclean re test colleen_test grace_test sully_test