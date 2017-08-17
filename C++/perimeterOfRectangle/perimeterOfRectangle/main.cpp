#include <iostream>

double calculatePerimiter(double w, double h) {
    return (w + h) * 2;
}

int main(int argc, const char * argv[]) {
    double width;
    double height;
    
    std::cout << "Enter the width and height of the rectangle (with space between each value): ";
    std::cin >> width >> height;
    
    std::cout << "The perimeter of the rectangle is " << calculatePerimiter(width, height) << ".\n";
    
    return 0;
}
