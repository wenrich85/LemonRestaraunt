import UIKit

//Creating the function
func greet(_ person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

//call the function
let message = greet("Taylor")
print(message)

//example 2
func greet2(person: String, formally: Bool) -> String{
    if formally {
        return "Greetings " + person
    }
    return "Hi " + person
}

print(greet2(person: "Marlo", formally: false))

//example 3
func calculateTotal(price: Double, qty: Int) -> Double {
    return price * Double(qty)
}

let total = calculateTotal(price: 9.99, qty: 2)
print(total)

func deliveryTime(minutes: Int) -> String {
    return "Ready in \(minutes) minutes"
}

print(deliveryTime(minutes: 5))

func calculateTotalWithTax(price: Double, taxRate: Double) -> String{
    let taxAmount = price * taxRate
    return "The total price with tax is \(price + taxAmount)"
}

print(calculateTotalWithTax(price: 100, taxRate: 0.08))
