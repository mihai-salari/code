#include <stdio.h>
#include <stdlib.h> // malloc

typedef struct Person {
    int age;
    int next;
} Person;

int main(int argc, const char * argv[]) {
    Person *foo = (Person *)malloc(sizeof(Person));
    foo->age = 20;
    
    printf("Foo's age is %d\n", foo->age);

    free(foo);
    
    return 0;
}
