# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/24 10:48:13 by hdeniz            #+#    #+#              #
#    Updated: 2025/01/28 ??:??:?? by hdeniz           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************** [v] VARIABLES [v] ***************************** #
	# [COMPILER]
		CC			=	clang
		SC			=	nasm
	# [COMPILER]
	# [EXE]
		MAINS		=	Colleen Grace Sully
		MAIN		=	./main.cpp
	# [EXE]
	# [COMPILER FLAGS]
		CFLAGS		=	-Wall -Wextra -Werror -no-pie
		SFLAGS		=	-f elf64
	# [COMPILER FLAGS]
# **************************** [^] VARIABLES [^] ***************************** #

# ****************************** [v] COLORS [v] ****************************** #
	C_RESET	=	$(shell tput sgr0)
	C_BLINK	=	$(shell tput blink)
	B1F11	=	$(shell tput setab 1)$(shell tput setaf 11)
	B12F15	=	$(shell tput setab 12)$(shell tput setaf 15)
	B1F15	=	$(shell tput setab 1)$(shell tput setaf 15)
	B2F15	=	$(shell tput setab 2)$(shell tput setaf 15)
# ****************************** [^] COLORS [^] ****************************** #

all: $(MAINS)

$(MAINS):
	@$(SC) "Colleen.s" $(SFLAGS) -o "./Colleen.o" && \
		echo "\n\n $(C_BLINK)$(B2F15) Colleen.o is ready! $(C_RESET)\n"
	@$(CC) "Colleen.o" $(CFLAGS) -o "./Colleen" && \
		echo "\n\n $(C_BLINK)$(B2F15) Colleen is ready! $(C_RESET)\n"
	@$(SC) "Grace.s" $(SFLAGS) -o "./Grace.o" && \
		echo "\n\n $(C_BLINK)$(B2F15) Grace.o is ready! $(C_RESET)\n"
	@$(CC) "Grace.o" $(CFLAGS) -o "./Grace" && \
		echo "\n\n $(C_BLINK)$(B2F15) Grace is ready! $(C_RESET)\n"
	@$(SC) "Sully.s" $(SFLAGS) -o "./Sully.o" && \
		echo "\n\n $(C_BLINK)$(B2F15) Sully.o is ready! $(C_RESET)\n"
	@$(CC) "Sully.o" $(CFLAGS) -o "./Sully" && \
		echo "\n\n $(C_BLINK)$(B2F15) Sully is ready! $(C_RESET)\n"

c:
clear:
clean:
	@rm "Colleen.o" "Grace.o" "Sully.o" 2>/dev/null && \
		echo "\n $(B1F11) Colleen.o Grace.o Sully.o$(F15) are deleted! \
			$(C_RESET)\n" || \
		echo "\n $(B12F15) Colleen.o Grace.o Sully.o are not exist already! \
			$(C_RESET)\n"

fc: fclean
fclean: clean
	@rm $(MAINS) \
		Sully_1.s Sully_1 Sully_1.o Sully_2.s Sully_2 Sully_2.o\
		Sully_3.s Sully_3 Sully_3.o Sully_4.s Sully_4 Sully_4.o\
		Sully_0.s Sully_0 Sully_0.o\
		Sully_5.s Sully_5 Sully_5.o Grace_kid.s \
		2>/dev/null && \
		echo "\n $(B1F11) $(MAINS) Sully_5.s Grace_kid.s \
		$(F15)are deleted! $(C_RESET)\n" || \
		echo "\n $(B12F15) $(MAIN_EXE) are not exist already! $(C_RESET)\n"

re: fclean all

.PHONY: all fclean fc clean clear c