#include <stdio.h>
#include <stdlib.h>

typedef struct Person {
    int age;
    struct Person *next;
} Person;

int main(int argc, const char * argv[]) {
    Person *first;
    
    Person *head = (Person *)malloc(sizeof(Person)); // create a person and assign to head position
    head->age = 999;
    head->next = NULL;
    
    first = head; // so that we can refer back to first node
    
    for (int i = 0; i < 100; i++) {
        head->next = (Person *)malloc(sizeof(Person));
        head = head->next; // assign next person to head
        
        head->age = arc4random_uniform(100) + 1;
    }
    
    return 0;
}
