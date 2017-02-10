NAME	:= libft.a
SHELL 	:= /bin/zsh

CC		:= gcc
CFLAGS 	:= -Wall -Wextra -Werror

INC_DIR := includes
SRC 	:= srcs/*.c
OBJ		:= *.o

RM		:= rm -f

all: $(NAME)

$(NAME): 
	$(CC) -c $(CFLAGS) $(SRC) -I $(INC_DIR)
	ar rc $(NAME) $(OBJ)

clean: 
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all
