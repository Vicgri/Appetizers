//
//  Alert.swift
//  Appetizers
//
//  Created by Victoria Grimen on 11/10/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
  let id = UUID()
  let title: Text
  let message: Text
  let dismissButton: Alert.Button
}

struct AlertContext {
  //MARK - Netwok Alerts
  static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received from the server was invalid. Please contact support.")
                                          , dismissButton: .default(Text("OK")))
  
  static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                          message: Text("Invalid response from the server. Please try again later or contact support ")
                                          , dismissButton: .default(Text("OK")))
  
  static let invalidURL       = AlertItem(title: Text("Server Error"),
                                          message: Text("There was an issuse connecting to the server. If this persist, please contact support")
                                          , dismissButton: .default(Text("OK")))
  
  static let unabletoComplete = AlertItem(title: Text("Server Error"),
                                          message: Text("Uanble to complete your request at this time. Please check your Internet connection.")
                                          , dismissButton: .default(Text("OK")))
  //MARK - Account Alerts
  static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                          message: Text("Please ensure all fields in the form have been filled out")
                                          , dismissButton: .default(Text("OK")))
  
  static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                          message: Text("Please ensure your email is correct.")
                                          , dismissButton: .default(Text("OK")))
}
 
