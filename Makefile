CC=cc
C_FLAGS=-Wall -std=c99
BIN_DIR=bin
BIN_NAME=main
OBJ_DIR=bin/obj

all: hashmap
	$(CC) $(C_FLAGS) $(OBJ_DIR)/*.o main.c -o $(BIN_DIR)/$(BIN_NAME)
optimized: opt_hashmap
	$(CC) $(C_FLAGS) -O2 $(OBJ_DIR)/*.o main.c -o $(BIN_DIR)/$(BIN_NAME)
hashmap:
	mkdir -p $(OBJ_DIR)
	$(CC) $(C_FLAGS) -c hashmap.c -o $(OBJ_DIR)/hashmap.o
opt_hashmap:
	mkdir -p $(OBJ_DIR)
	$(CC) $(C_FLAGS) -O2 -c hashmap.c -o $(OBJ_DIR)/hashmap.o
