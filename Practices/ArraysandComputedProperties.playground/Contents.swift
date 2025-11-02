import UIKit
import Foundation

struct ArrayDemos {
    static func creationAndBasics() {
        let emptyArray: [Int] = [1,2,3]
        //              position 0,1,2
        let preInitializedArray = [1,2,3]
        let repeatedArray = Array(repeating: 0, count: 5)
        let repeatedInitializedArray = [0,0,0,0,0]
        
        var a = [10, 20]
        a.append(40)
        a.append(50)
//        add something at a specific position
        a.insert(30, at: 2)
//        a.remove(at: 1)
        print(a)
    }
    
    static func transformers(){
        let nums = [1,2,3,4,5,6]
        
        let evenNums = nums.filter {$0.isMultiple(of: 2)}
        let squareNums = nums.map(){$0 * $0}
        let sumNums = nums.reduce(5){ $0 + $1 }
        
        print(squareNums)
        let strings = ["1", "a", "2", "b", "3", "c"]
        let valueNumbers = strings.compactMap(Int.init)
//        print(valueNumbers)
    }
    
    static func sorting() {
        var a = [3,2,2,4,5,9,2,4,5]
        let sortedA = a.sorted()
        print(sortedA)
    }
}

// MARK: - Computed Properties

struct MenuItem{
    var name: String
    var price: Double
    var rating: Int
}

var buritto = MenuItem(name: "Burrito", price: 5.99, rating: 4)
var taco = MenuItem(name: "Taco", price: 2.99, rating: 3)

struct Temperature {
    var celsius: Double
    
    var farenhiet: Double {
        get {celsius * 9/5 + 32}
        set {celsius = (newValue - 32) * 9/5}
    }
}

var menu: [MenuItem] = []

var currentTemp = Temperature(celsius: 0.0)

currentTemp.farenhiet = 90

print(currentTemp.celsius)

ArrayDemos.transformers()
