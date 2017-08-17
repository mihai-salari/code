#include <iostream>

int main(int argc, const char * argv[]) {
    int minutes;
    int hour;
    int minute;
    
    std::cout << "Enter time in minutes: ";
    std::cin >> minutes;
    
    hour = minutes / 60;
    minute = minutes - (hour * 60);
    
    std::cout << minutes << " is " << hour << " hour and " << minute << " minute.\n";
    
    return 0;
}
