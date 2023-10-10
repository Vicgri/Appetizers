//
//  Appetizer.swift
//  Appetizers
//
//  Created by Victoria Grimen on 10/10/2023.
//

import Foundation

//Using decodable since we only retrive and receiving data.
//If we were going to manipulating the data we would need encodable
struct Appetizer: Decodable {
  let id: Int
  let name: String
  let description: String
  let price: Double
  let imageURL: String
  let calories: Int
  let protein: Int
  let carbs: Int
}

// Helper response to handle the nested Json
struct AppetizerResponse {
  let request: [Appetizer]
  
}

struct MockData {
  
  static let sampleAppetizer = Appetizer(id: 0001,
                                         name: "Test Appetizer",
                                         description: "This is the description for my appetizer",
                                         price: 9.99,
                                         imageURL: "",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 99)
  
}


