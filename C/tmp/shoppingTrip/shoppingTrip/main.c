#include <stdio.h>

int totalItems = 0;
float totalCost = 0.0;
float salesTax = 0.06; // GST 6%

void add_to_total(float cost, int quantity);
float cost_with_sales_tax(float price);

int main(int argc, const char * argv[]) {
    
    return 0;
}

void add_to_total(float cost, int quantity) {
    printf("Adding %i items of cost RM%5.2f\n", quantity, cost);
    
    float calculatedCost = cost * quantity;
    float realCost = cost_with_sales_tax(calculatedCost);
    
    totalCost += realCost;
    totalItems += quantity;
    
    printf("Subtotal for %i items: RM%5.2f\n", totalItems, totalCost);
}

float cost_with_sales_tax(float price) {
    float taxAmount = price * salesTax;
    float subTotal = price + taxAmount;
    
    return subTotal;
}
