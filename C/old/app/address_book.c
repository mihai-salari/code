/*
  A simple address book application that stores records
  in a text based database.

  Supported features:
  - add new record
  - delete existing record
  - get a specific record
  - list all records
 */

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#define MAX_DATA 512
#define MAX_ROWS 100

typedef struct {
	int id;
	int set;
	char name[MAX_DATA];
	char email[MAX_DATA];
} Address;

typedef struct {
	Address rows[MAX_ROWS];
} Database;

typedef struct {
	FILE *file;
	Database *db;
} Connection;

void die(const char *message) {
	if (errno) {
		perror(message);
	} else {
		printf("ERROR: %s\n", message);
	}
	
	exit(1);	
}

void Connection_print(Connection *conn, const char *function) {
	printf("Debug->%s: conn is %p\n", function, conn);
	printf("Debug->%s: conn->db is %p\n", function, conn->db);
	printf("Debug->%s: conn->file is %p\n", function, conn->file);
}

void Address_print(Address *addr) {
	printf("%d %s %s\n", addr->id, addr->name, addr->email);
}

void Database_load(Connection *conn) {
	Connection_print(conn, "Database_load");
	
	int rc = fread(conn->db, sizeof(Database), 1, conn->file);
	
	printf("Debug->Database_load: rc is %i\n", rc);
	printf("Debug->Database_load: sizeof database struct = %zu bytes\n", sizeof(Database));
	
	if (rc != 1) {
		die("Failed to load database.");
	}
}

Connection *Database_open(const char *filename, char mode) {
	printf("Debug->Database_open: filename=%s, mode=%c\n", filename, mode);
	
	Connection *conn = malloc(sizeof(Connection));
	
	if (!conn) {
		die("Memory error.");
	}
	
	conn->db = malloc(sizeof(Database));
	
	if (!conn->db) {
		die("Memory error.");
	}
	
	if (mode == 'c') {
		printf("Debug->Database_open: fopen %s with 'w' mode\n", filename);
		conn->file = fopen(filename, "w");
	} else {
		printf("Debug->Database_open: fopen %s with 'r+' mode\n", filename);
		conn->file = fopen(filename, "r+");
		
		if (conn->file) {
			printf("Debug->Database_open: calling Database_load\n");
			Database_load(conn);
		}
	}
	
	if (!conn->file) {
		die("Failed to open the file.");
	} else {
		printf("Debug->Database_open: database file opened\n");
	}	

	Connection_print(conn, "Database_open");
	
	return conn;
}

void Database_close(Connection *conn) {
	Connection_print(conn, "Database_close");
	
	if (conn) {
		if (conn->file) {
			fclose(conn->file);
		}
		
		if (conn->db) {
			free(conn->db);
		}
		
		free(conn);
	}
}

void Database_write(Connection *conn) {
	Connection_print(conn, "Database_write");
	
	rewind(conn->file);
	
	int rc = fwrite(conn->db, sizeof(Database), 1, conn->file);
	
	if (rc != 1) {
		die("Failed to write database.");
	}
	
	rc = fflush(conn->file);
	
	if (rc == -1) {
		die("Cannot flush database.");
	}
}

void Database_create(Connection *conn) {
	Connection_print(conn, "Database_create");
	
	int i = 0;
	
	for (i = 0; i < MAX_ROWS; i++) {
		printf("Debug->Database_create: MAX_ROWS=%i\n", MAX_ROWS);
		printf("Debug->Database_create: for loop's i=%d\n", i);
		
		// make a prototype to initialize it
		Address addr = {
			.id = i,
			.set = 0
		};

		// then just assign it
		conn->db->rows[i] = addr;
	}
}

void Database_set(Connection *conn, int id, const char *name, const char *email) {
	Connection_print(conn, "Database_set");
	
	printf("Debug->Database_set: id=%i, name=%s, email=%s\n", id, name, email);
	
	Address *addr = &conn->db->rows[id];
	
	if (addr->set) {
		die("Already set, delete it first.");
	}
	
	addr->set = 1;
	
	char *res = strncpy(addr->name, name, MAX_DATA);
	
	if (!res) {
		die("Name copy failed.");
	}
	
	res = strncpy(addr->email, email, MAX_DATA);
	
	if (!res) {
		die("Email copy failed.");
	}
}

void Database_get(Connection *conn, int id) {
	Connection_print(conn, "Database_get");
	
	Address *addr = &conn->db->rows[id];
	
	if (addr->set) {
		Address_print(addr);
	} else {
		die("ID is not set.");
	}
}

void Database_delete(Connection *conn, int id) {
	Connection_print(conn, "Database_delete");
	
	Address addr = {
		.id = id,
		.set = 0
	};
	
	conn->db->rows[id] = addr;	
}

void Database_list(Connection *conn) {
	Connection_print(conn, "Database_list");
	
	int i = 0;
	
	Database *db = conn->db;
	
	for (i = 0; i < MAX_ROWS; i++) {
		Address *cur = &db->rows[i];
		
		if (cur->set) {
			Address_print(cur);
		}
	}
}

int main(int argc, char *argv[]) {
	if (argc < 3) {
		die("Usage: simple_address_book <dbfile> <action> [action params]");
	}
	
	char *filename = argv[1];
	char action = argv[2][0];
	
	printf("Debug: filename=%s, action=%c\n", filename, action);
	
	Connection *conn = Database_open(filename, action);
	
	Connection_print(conn, "main");
	
	int id = 0;
	
	if (argc > 3) {
		id = atoi(argv[3]);
	}
	
	if (id >= MAX_ROWS) {
		die("There's not that many records.");
	}
	
	switch (action) {
		case 'c':
			printf("Debug: creating %s\n", filename);
			Database_create(conn);
			Database_write(conn);
			break;
		case 'g':
			if (argc != 4) {
				die("Need an id to get.");
			}
		
			Database_get(conn, id);
			break;
		case 's':
			if (argc != 6) {
				die("Need id, name, email to set.");
			}
		
			Database_set(conn, id, argv[4], argv[5]);
			Database_write(conn);
			break;
		case 'd':
			if (argc != 4) {
				die("Need id to delete.");
			}
		
			Database_delete(conn, id);
			Database_write(conn);
			break;
		case 'l':
			Database_list(conn);
			break;
		default:
			die("Invalid action: c=create, g=get, s=set, d=delete, l=list");				
	}
	
	Database_close(conn);
	
	return 0;
}