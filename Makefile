NAME =		libft.a

SOURCES =	ft_atoi.c\
			ft_bzero.c\
			ft_calloc.c\
			ft_isalnum.c\
			ft_isalpha.c\
			ft_isascii.c\
			ft_isdigit.c\
			ft_isprint.c\
			ft_itoa.c\
			ft_memcmp.c\
			ft_memchr.c\
			ft_memcpy.c\
			ft_memmove.c\
			ft_memset.c\
			ft_putchar_fd.c\
			ft_putstr_fd.c\
			ft_putendl_fd.c\
			ft_putnbr_fd.c\
			ft_split.c\
			ft_strchr.c\
			ft_strdup.c\
			ft_striteri.c\
			ft_strjoin.c\
			ft_strlcat.c\
			ft_strlcpy.c\
			ft_strlen.c\
			ft_strmapi.c\
			ft_strncmp.c\
			ft_strnstr.c\
			ft_strrchr.c\
			ft_strtrim.c\
			ft_substr.c\
			ft_tolower.c\
			ft_toupper.c\

OBJECTS = $(SOURCES:.c=.o)

BONUS_SRCS= ft_lstnew.c\
			ft_lstadd_front.c\
			ft_lstsize.c\
			ft_lstlast.c\
			ft_lstadd_back.c\
			ft_lstdelone.c\
			ft_lstclear.c\
			ft_lstiter.c\
			ft_lstmap.c\

BONUS_OBS = $(BONUS_SRCS:.c=.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -c $(SOURCES) $(BONUS_SRCS)
	ar -crs $(NAME) $(OBJECTS) $(BONUS_OBS)
# bonus:
# 	$(CC) $(CFLAGS) -c $(BONUS_SRCS)
# 	ar -crs $(NAME) $(BONUS_OBS)

re: fclean all

fclean: clean
	rm -f $(NAME)

clean:
	rm -f $(OBJECTS) $(BONUS_OBS)
