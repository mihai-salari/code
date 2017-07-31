import Foundation

// Quadratic equation
func calculateQuadraticEquation(_ a: Double, _ b: Double, _ c: Double) -> (Double, Double) {
    let x1 = (-b - sqrt((pow(b, 2) - (4 * a * c)))) / (2 * a)
    let x2 = (-b + sqrt((pow(b, 2) - (4 * a * c)))) / (2 * a)
    
    return (x1, x2)
}

print(calculateQuadraticEquation(1, 3, -4))
print(calculateQuadraticEquation(2, -4, -3))
