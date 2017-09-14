#include <stdio.h>

void error_print(FILE *ef, int error_code, char *msg) {
	fprintf(ef, "Error #%i occurred: %s\n", error_code, msg);
}

int main() {
	FILE *error_file = fopen("error_print.txt", "w"); // open for writing
	error_print(error_file, 44, "Out of karma");
}