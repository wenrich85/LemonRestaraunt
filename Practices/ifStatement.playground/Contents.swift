import UIKit

//IF-ELSE IF -ELSE

/*
 ----- SYNTAX -----
 if condition1 {
    this block of code runs if condition 1 is true
 }else if condition2{
    Ths block runs if condition1 is false and condition2 is true
 }else{
    this block runs if none of the above conditions are true
 }
 */

 // -----Examole 1 -----
var waterTemp:Int = 30

if waterTemp >= 100 {
    print("The water is boiling.")
} else{
    print("The water is not boiling")
}

// ------ Example 2 -----

var position = 99

if position == 1 {
    print("You came first")
} else if position == 2 {
    print("You came second")
}else if position == 3 {
    print("You came in third.")
} else {
    print("You finished in position \(position)")
}


//---- Example 3 ---- AND &&
var temp = 74

if temp >= 68 && temp <= 75 {
    print("The temperature is just right")
}else{
    print("The temperature is too hot or cold")
}

//-----Example 4-----
var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower || batteryPower {
    print("I can use the Laptop!")
} else {
    print("Find a charger to use the laptop")
}


var isVip:Bool = false

if isVip {
    print("Welcome to the VIP Section")
} else {
    print("Welcome to the General Section. Contact sales to upgrade to VIP")
}
