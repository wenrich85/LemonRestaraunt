import UIKit

//ARRAYS

// Create an arry of strings

let dishes = ["Pizza", "Pasta", "Gnocchi"]

//to access, use the index
print(dishes[0])
print(dishes[1])


// EXAMPLE 2

var orders = [String]() //creating an array
orders.append("Soup")
orders.append("Burger")
print(orders.count)

// Dictionares Key:Value pairs
// Define a dictionay with prices

let menuPrices:[String:Double] = ["Pizza":12.99, "Salad":13.80, "Price":9.50]

// access value using the key

print(menuPrices["Salad"]!) //Optional(13.80)

//Challenge 1: Create a dictionary for 3 drinks and their prices Print one price

let drinkPrices:[String:Double] = ["Coke":4.00, "Pepsi":3.50, "Water":4.50]

print(drinkPrices["Coke"]!)
//FOREACH PRACTICE
let fruits = [
    "Apple":1.50,
    "Banana":0.58,
    "Mango":2.20,
]

fruits.forEach{fruit, price in
    if price > 1 {
        print("The \(fruit) costs \(price)")
    }
}

let students = [
    "Ivan":4.0,
    "Wendell":3.9,
    "Ken":3.8,
    "Alex":3.7,
    "Linda":3.6
]

//travel the students dictionary using forEach gpa > 3.8

students.forEach{student, gpa in
    if gpa > 3.8 {
        print("\(student) currently has a \(gpa) grade point average.")

    }
}
