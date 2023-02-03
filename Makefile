CXX			= CL

CXXFLAGS	= /Wall /WX

NAME 		= svc.exe
NAME_KEYLOG = winkey.exe

SRCS		= srcs/main.cpp


SRCS_KEYLOG = srcs/keylogger.cpp

INCL		= inc/svc.hpp

INCL_KEYLOG = inc/keylogger.hpp

OBJS		= $(SRCS:.cpp=.o)
OBJS_KEYLOG = $(SRCS_KEYLOG:.cpp=.o)

all:		$(NAME)

$(NAME):	$(OBJS) $(INCL)
			$(CXX) $(CXXFLAGS) $(SRCS) -o $(NAME)

keylogger:	$(NAME_KEYLOG)

$(NAME_KEYLOG):	$(OBJS_KEYLOG) $(INCL_KEYLOG)
			$(CXX) $(CXXFLAGS) $(SRCS_KEYLOG) -o $(NAME_KEYLOG)

clean:		
			Remove-Item $(OBJS) -Force -Recurse

fclean: 	clean
			Remove-Item $(NAME) -Force -Recurse

re: 		fclean ${NAME}

.PHONY: clean fclean all re keylogger