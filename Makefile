# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frueda-m <frueda-m@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 14:51:32 by frueda-m          #+#    #+#              #
#    Updated: 2022/11/07 03:31:11 by frueda-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = 				ft_isalnum.c ft_isprint.c ft_memcmp.c \
					ft_strlcat.c ft_strncmp.c ft_atoi.c ft_isalpha.c \
					ft_memcpy.c ft_strchr.c  ft_strlcpy.c \
					ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c \
					ft_memmove.c ft_strdup.c  ft_strlen.c  ft_strrchr.c \
					ft_toupper.c ft_calloc.c  ft_isdigit.c ft_memchr.c  ft_memset.c  \

SRC_BONUS = $(shell find . -name "*_bonus.c")

OBJ = ${SRC:.c=.o}

OBJ_BONUS = ${SRC_BONUS:.c=.o}

CFLAGS = -Wall -Werror -Wextra

COMPILE = gcc $(CFLAGS) -c

LIB = ar rc $(NAME)

RANLIB = ranlib $(NAME)

REMOVE = rm -rf

OBJS_DIR = objs/
OBJECTS_PREFIXED = $(addprefix $(OBJS_DIR), $(OBJ))

OBJECTS_BONUS_PREFIXED = $(addprefix $(OBJS_DIR), $(OBJ_BONUS))

$(OBJS_DIR)%.o : %.c libft.h
	@mkdir -p $(OBJS_DIR)
	@echo "Compiling: $<"
	@$(COMPILE) $< -o $@

all: $(NAME)

$(NAME): $(OBJECTS_PREFIXED)
	@$(LIB) $(OBJECTS_PREFIXED)
	@echo "Libft Done !"
	
# bonus: $(OBJECTS_BONUS_PREFIXED)
# 	@$(LIB) $(OBJECTS_BONUS_PREFIXED)
# 	@echo "Libft Bonus Done !"

clean:
	@$(REMOVE) $(OBJS_DIR)

fclean: clean
	@$(REMOVE) $(NAME)

re: fclean all

so:
	gcc -fPIC -c $(SRC)
	gcc -shared -Wl,-soname,libft.so -o libft.so *.o
.PHONY: all clean fclean re