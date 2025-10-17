import UIKit

// variables var
// constants let

// constants dont chaange
let day = "Monday"
let dailyTemp = 75



print("Today is \(day). And the temperature is \(dailyTemp).")

//variables - changeable
var temp = 70
print("The temp in the morning is \(temp)")
temp = 80
print("The temp at noon is \(temp)")

let weeklyTemp = 75.6

temp = Int(weeklyTemp)

print("The temp in the evening is \(temp)")

var isRaining = false

print("----- The game score example ----")
let levelScore = 10

var gameScore = 0

print(levelScore)

print(gameScore)

print("The level score is \(levelScore)") // string interpolation uses the \(variable) syntax

gameScore = 5
print(gameScore)

gameScore += levelScore

print(gameScore)

var levelBonusScore = 20.0 //double
print("Your bonus score is \(levelBonusScore)")

let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10

let levelScoreDifference = levelHighestScore - levelLowestScore

print("Level score difference is: \(levelScoreDifference)")

let dishName: String = "Pizza"

let price: Double = 12.99

let inStock: Bool = false

let quantity: Int = 0

