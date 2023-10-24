//
//  Appetizer.swift
//  Appetizers
//
//  Created by Victoria Grimen on 10/10/2023.
//

import Foundation

//Using decodable since we only retrive and receiving data.
//If we were going to manipulating the data we would need encodable
struct Appetizer: Decodable, Identifiable {
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
struct AppetizerResponse: Decodable {
  let request: [Appetizer]
  
}

// Dummy data
struct MockData {
  
  static let sampleAppetizer      = Appetizer(id: 0001,
                                         name: "Test Appetizer",
                                         description: "This is the description for my appetizer",
                                         price: 9.99,
                                         imageURL: "",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 99)
  
  // array to help build a list
  static let appetizers           = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer ]
  
  static let orderItemOne         = Appetizer(id: 0001,
                                         name: "Test Appetizer 1",
                                         description: "This is the description for my appetizer",
                                         price: 9.99,
                                         imageURL: "",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 99)
  
  static let orderItemTwo         = Appetizer(id: 0002,
                                              name: "Test Appetizer 2",
                                              description: "This is the description for my appetizer",
                                              price: 9.99,
                                              imageURL: "",
                                              calories: 99,
                                              protein: 99,
                                              carbs: 99)
  
  static let orderItemThree        = Appetizer(id: 0003,
                                              name: "Test Appetizer 3",
                                              description: "This is the description for my appetizer",
                                              price: 9.99,
                                              imageURL: "",
                                              calories: 99,
                                              protein: 99,
                                              carbs: 99)
  
  static let orderItems           =  [orderItemOne, orderItemTwo, orderItemThree]
  
}



