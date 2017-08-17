#include <iostream>

int main(int argc, const char * argv[]) {
    int hour;
    int minute;
    int totalMinutes;
    
    std::cout << "Enter hours and minutes (separate by space): ";
    std::cin >> hour >> minute;
    
    totalMinutes = (hour * 60) + minute;
    
    std::cout << "Total minute: " << totalMinutes << "\n";
    
    return 0;
}
