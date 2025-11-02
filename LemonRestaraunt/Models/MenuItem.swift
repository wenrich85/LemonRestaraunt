//
//  MenuItem.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/28/25.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
    
    
}
