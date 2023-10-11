//
//  APError.swift
//  Appetizers
//
//  Created by Victoria Grimen on 11/10/2023.
//

import Foundation

enum APError: Error {
  case invalidURL
  case invalidResponse //404 or such errors
  case invalidData  // can´t parse the data
  case unableToComplete // general error
  
}
