# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++20 -Wall -g

# SFML libraries
LIBS = -lsfml-graphics -lsfml-window -lsfml-system

# Source files and output binary
SRC = main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = main

# Default target to build the application
all: $(TARGET)

# Rule to compile the source files
$(TARGET): $(OBJ)
	$(CXX) $(OBJ) -o $(TARGET) $(LIBS)

# Rule to compile the individual object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up the object files and binary
clean:
	rm -f $(OBJ) $(TARGET)

# Phony targets (to avoid conflicts with files named "clean" or "all")
.PHONY: all clean
