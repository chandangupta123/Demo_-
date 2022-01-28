# Project: Project1
# Makefile created by Dev-C++ 5.11



CPP = g++.exe
CC = gcc.exe
WINDRES = windres.exe
LINKOBJ =
LIBS = -L"C:/Program Files (x86)/Dev-Cpp/MinGW64/lib" -L"C:/Program Files (x86)/Dev-Cpp/MinGW64/x86_64-w64-mingw32/lib" -static-libgcc
INCS = -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/include" -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/x86_64-w64-mingw32/include" -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include"
CXXINCS = -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/include" -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/x86_64-w64-mingw32/include" -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include" -I"C:/Program Files (x86)/Dev-Cpp/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++"
BIN = Hello.exe
CXXFLAGS = $(CXXINCS)
CFLAGS = $(INCS)
RM = rm.exe -f



.PHONY: all all-before all-after clean clean-custom



all: all-before $(BIN) all-after



clean: clean-custom
${RM} $(OBJ) $(BIN)
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))
$(BIN): $(OBJ)
$(CC) $(LINKOBJ) -o $(BIN) $(OBJ) $(LIBS)
$(OBJ): $(SRC)
$(CC) -c $(SRC)
