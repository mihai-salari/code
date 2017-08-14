#import <Foundation/Foundation.h>

typedef struct {
    int age;
    float weigth;
    float height;
} Person;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person p;
        p.age = 37;
        p.weigth = 55.5;
        p.height = 164.0;
        
        NSValue *personValue = [NSValue value:&p withObjCType:@encode(Person)];
        
        NSLog(@"%@", personValue);
    }
    
    return 0;
}
