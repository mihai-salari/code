#include <stdio.h>

struct hiLow {
    float high;
    float low;
};

struct dailyTemperatures {
    struct hiLow tempExtremes;
    
    float low;
    int year;
    int dayOfYear;
};

int main(int argc, const char * argv[]) {
    struct dailyTemperatures today; // today is a struct
    struct dailyTemperatures *todayPtr; // todayPtr is a pointer to a struct
    
    todayPtr = &today;
    
    today.tempExtremes.high = 40.0;
    todayPtr->tempExtremes.low = 34.5;
    
    return 0;
}
