#include <iostream>

int main(int argc, const char * argv[]) {
    double hour;
    double minute;
    double totalMinutes;
    
    std::cout << "Enter hours and minutes (separate by space): ";
    std::cin >> hour >> minute;
    
    totalMinutes = (hour * 60) + minute;
    
    std::cout << "Total minute: " << totalMinutes << "\n";
    
    return 0;
}
