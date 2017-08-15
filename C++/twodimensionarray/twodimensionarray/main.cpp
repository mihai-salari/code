#include <iostream>

int main(int argc, const char * argv[]) {
    int matrix[2][2] = {
        {1, 2},
        {9, 8}
    };
    
    std::cout << "matrix[0][0] = " << matrix[0][0] << "\n";
    std::cout << "matrix[0][1] = " << matrix[0][1] << "\n";
    std::cout << "matrix[1][0] = " << matrix[1][0] << "\n";
    std::cout << "matrix[1][1] = " << matrix[1][1] << "\n";
    
    return 0;
}
