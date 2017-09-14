#include <stdio.h>

char *getFullName(char *firstName, char *lastName) {
    char *fullName;
    asprintf(&fullName, "%s %s", firstName, lastName);
    
    return fullName;
}

int main(int argc, const char * argv[]) {
    char *fullName = getFullName("Foo", "Bar");
    
    printf("%s\n", fullName);
    
    return 0;
}
