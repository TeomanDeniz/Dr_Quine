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
		CC			=	gcc
	# [COMPILER]
	# [EXE]
		MAINS		=	Colleen Grace Sully
		MAIN		=	./main.cpp
	# [EXE]
	# [COMPILER FLAGS]
		FLAGS		=	-Wall -Wextra -Werror
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
	@$(CC) "Colleen.c" $(FLAGS) -o "./Colleen" && \
		echo "\n\n $(C_BLINK)$(B2F15) Colleen is ready! $(C_RESET)\n"
	@$(CC) "Grace.c" $(FLAGS) -o "./Grace" && \
		echo "\n\n $(C_BLINK)$(B2F15) Grace is ready! $(C_RESET)\n"
	@$(CC) "Sully.c" $(FLAGS) -o "./Sully" && \
		echo "\n\n $(C_BLINK)$(B2F15) Sully is ready! $(C_RESET)\n"

c: fclean
clear: fclean
clean: fclean
fc: fclean
fclean:
	@rm $(MAINS) 2>/dev/null && \
		echo "\n $(B1F11) $(MAINS) $(F15) are deleted! $(C_RESET)\n" || \
		echo "\n $(B12F15) $(MAIN_EXE) are not exist already! $(C_RESET)\n"

re: fclean all

.PHONY: all fclean fc clean clear c