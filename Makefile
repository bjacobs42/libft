NAME	= libft.a
OBJ_FR 	= obj/
CFLAGS	= -Wall -Werror -Wextra
CC		= gcc

SRC_FILES 	= ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint ft_isspace \
			  ft_atoi ft_itoa ft_tolower ft_toupper \
			  ft_split ft_strdup ft_strjoin ft_strlcpy ft_strlcat ft_strmapi ft_strnstr ft_strtrim ft_strchr \
			  ft_striteri ft_strlcat ft_strlen ft_strncmp ft_strrchr ft_substr \
			  ft_putchar_fd ft_putendl_fd ft_putnbr_fd ft_putstr_fd \
			  ft_bzero ft_calloc ft_memchr ft_memcmp ft_memcpy ft_memmove ft_memset

B_FILES		= ft_lstadd_back ft_lstclear ft_lstiter ft_lstmap ft_lstsize ft_lstadd_front \
			  ft_lstdelone ft_lstlast ft_lstnew

SRC		= $(addsuffix .c, $(SRC_FILES))
SRCB	= $(addsuffix .c, $(B_FILES))
OBJ		= $(addsuffix .o, $(SRC_FILES))
OBJB	= $(addsuffix .o, $(B_FILES))

all: ${NAME}

${NAME}: ${OBJ}
	ar rcs ${NAME} ${OBJ}

%.o : %.c
	${CC} ${CFLAGS} -c $^ -o $@

bonus: ${OBJ} ${OBJB}
	ar rc ${NAME} ${OBJ} ${OBJB}

clean:
	rm -f ${OBJ} ${OBJB}
fclean: clean
	rm -f ${NAME}
re: fclean all

.PHONY: all bonus clean fclean re
