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
        //printf("Allocating new Person #%d\n", i);
        head->next = (Person *)malloc(sizeof(Person));
        head = head->next; // assign next person to head
        
        head->age = arc4random_uniform(100) + 1;
        head->next = NULL;
    }
    
    head = first;
    int count = 0;
    
    while (head->next != NULL) {
        printf("count is %d\n", count);
        printf("#%d person is %d years old.\n", count, head->age);
        
        head = head->next;
        
        count += 1;
    }
    
    return 0;
}

/*

 count is 0
 #0 person is 999 years old.
 count is 1
 #1 person is 32 years old.
 count is 2
 #2 person is 1 years old.
 count is 3
 #3 person is 64 years old.
 count is 4
 #4 person is 8 years old.
 count is 5
 #5 person is 86 years old.
 count is 6
 #6 person is 8 years old.
 count is 7
 #7 person is 50 years old.
 count is 8
 #8 person is 43 years old.
 count is 9
 #9 person is 49 years old.
 count is 10
 #10 person is 43 years old.
 count is 11
 #11 person is 46 years old.
 count is 12
 #12 person is 8 years old.
 count is 13
 #13 person is 89 years old.
 count is 14
 #14 person is 96 years old.
 count is 15
 #15 person is 91 years old.
 count is 16
 #16 person is 6 years old.
 count is 17
 #17 person is 85 years old.
 count is 18
 #18 person is 13 years old.
 count is 19
 #19 person is 15 years old.
 count is 20
 #20 person is 18 years old.
 count is 21
 #21 person is 55 years old.
 count is 22
 #22 person is 72 years old.
 count is 23
 #23 person is 73 years old.
 count is 24
 #24 person is 100 years old.
 count is 25
 #25 person is 73 years old.
 count is 26
 #26 person is 78 years old.
 count is 27
 #27 person is 37 years old.
 count is 28
 #28 person is 17 years old.
 count is 29
 #29 person is 23 years old.
 count is 30
 #30 person is 30 years old.
 count is 31
 #31 person is 75 years old.
 count is 32
 #32 person is 60 years old.
 count is 33
 #33 person is 14 years old.
 count is 34
 #34 person is 76 years old.
 count is 35
 #35 person is 37 years old.
 count is 36
 #36 person is 60 years old.
 count is 37
 #37 person is 16 years old.
 count is 38
 #38 person is 79 years old.
 count is 39
 #39 person is 27 years old.
 count is 40
 #40 person is 20 years old.
 count is 41
 #41 person is 100 years old.
 count is 42
 #42 person is 35 years old.
 count is 43
 #43 person is 82 years old.
 count is 44
 #44 person is 73 years old.
 count is 45
 #45 person is 27 years old.
 count is 46
 #46 person is 45 years old.
 count is 47
 #47 person is 8 years old.
 count is 48
 #48 person is 56 years old.
 count is 49
 #49 person is 73 years old.
 count is 50
 #50 person is 49 years old.
 count is 51
 #51 person is 90 years old.
 count is 52
 #52 person is 38 years old.
 count is 53
 #53 person is 50 years old.
 count is 54
 #54 person is 36 years old.
 count is 55
 #55 person is 70 years old.
 count is 56
 #56 person is 41 years old.
 count is 57
 #57 person is 80 years old.
 count is 58
 #58 person is 7 years old.
 count is 59
 #59 person is 72 years old.
 count is 60
 #60 person is 13 years old.
 count is 61
 #61 person is 14 years old.
 count is 62
 #62 person is 6 years old.
 count is 63
 #63 person is 6 years old.
 count is 64
 #64 person is 83 years old.
 count is 65
 #65 person is 81 years old.
 count is 66
 #66 person is 61 years old.
 count is 67
 #67 person is 17 years old.
 count is 68
 #68 person is 46 years old.
 count is 69
 #69 person is 78 years old.
 count is 70
 #70 person is 68 years old.
 count is 71
 #71 person is 32 years old.
 count is 72
 #72 person is 93 years old.
 count is 73
 #73 person is 36 years old.
 count is 74
 #74 person is 90 years old.
 count is 75
 #75 person is 57 years old.
 count is 76
 #76 person is 6 years old.
 count is 77
 #77 person is 23 years old.
 count is 78
 #78 person is 59 years old.
 count is 79
 #79 person is 30 years old.
 count is 80
 #80 person is 34 years old.
 count is 81
 #81 person is 29 years old.
 count is 82
 #82 person is 92 years old.
 count is 83
 #83 person is 87 years old.
 count is 84
 #84 person is 83 years old.
 count is 85
 #85 person is 68 years old.
 count is 86
 #86 person is 54 years old.
 count is 87
 #87 person is 18 years old.
 count is 88
 #88 person is 37 years old.
 count is 89
 #89 person is 58 years old.
 count is 90
 #90 person is 47 years old.
 count is 91
 #91 person is 11 years old.
 count is 92
 #92 person is 28 years old.
 count is 93
 #93 person is 26 years old.
 count is 94
 #94 person is 21 years old.
 count is 95
 #95 person is 93 years old.
 count is 96
 #96 person is 95 years old.
 count is 97
 #97 person is 91 years old.
 count is 98
 #98 person is 29 years old.
 count is 99
 #99 person is 2 years old.
 Program ended with exit code: 0

*/
