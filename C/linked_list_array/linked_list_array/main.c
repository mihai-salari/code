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
    printf("Size of Foo is %zu bytes\n", sizeof(foo));

    free(foo);
    
    Person *persons[100];
    
    int head = 0; // first index
    int next = 1;
    
    for (head = 0; head < 100; head++) {
        Person *p = (Person *)malloc(sizeof(Person));
        p->age = arc4random_uniform(100) + 1;
        p->next = next;
        persons[head] = p;
        
        printf("Person's age is %d\n", p->age);
        printf("Person's next is %d\n", p->next);
        
        next += 1;
    }
    
    printf("Size of persons is %zu bytes\n", sizeof(persons));
    
    return 0;
}
