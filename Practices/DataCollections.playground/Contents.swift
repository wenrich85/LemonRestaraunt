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
