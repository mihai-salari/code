#include <stdio.h>

int totalItems = 0;
float totalCost = 0.0;
float salesTax = 0.06; // GST 6%

void add_to_total(float cost, int quantity);
float cost_with_sales_tax(float price);

int main(int argc, const char * argv[]) {
    float budget = 10000.00;
    
    printf("\n");
    
    float laptopPrice = 1599.00; // 12' MacBook with 1.3GHz processor, 512GB storage
    float monitorPrice = 1299.95; // LG UltraFine 5K display
    float phonePrice = 399.00; // iPhone SE

    add_to_total(laptopPrice, 5);
    add_to_total(monitorPrice, 1);
    add_to_total(phonePrice, 4);
    
    printf("-------------------------------------------------------------\n");
    
    printf("TOTAL for %i items: $%5.2f\n\n", totalItems, totalCost);
    
    printf("==================\n");
    printf(" APPROVAL STATUS\n");
    printf("==================\n");
    
    if (totalCost < budget) {
        printf("Approved, please go ahead to Apple Store online now!\n");
    } else {
        printf("Damn, you're over budget.\n");
    }
    
    printf("\n");
    
    return 0;
}

void add_to_total(float cost, int quantity) {
    printf("Adding %i items of cost $%5.2f\n", quantity, cost);
    
    float calculatedCost = cost * quantity;
    float realCost = cost_with_sales_tax(calculatedCost);
    
    totalCost += realCost;
    totalItems += quantity;
    
    printf("Subtotal for %i items: $%5.2f\n", totalItems, totalCost);
}

float cost_with_sales_tax(float price) {
    float taxAmount = price * salesTax;
    float subTotal = price + taxAmount;
    
    return subTotal;
}

/*

 
 Adding 5 items of cost $1599.00
 Subtotal for 5 items: $8474.70
 Adding 1 items of cost $1299.95
 Subtotal for 6 items: $9852.65
 Adding 4 items of cost $399.00
 Subtotal for 10 items: $11544.41
 -------------------------------------------------------------
 TOTAL for 10 items: $11544.41
 
 ==================
 APPROVAL STATUS
 ==================
 Damn, you're over budget.
 
 Program ended with exit code: 0

*/
