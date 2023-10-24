//
//  User.swift
//  Appetizers
//
//  Created by Victoria Grimen on 24/10/2023.
//

import Foundation

struct User: Codable {
  
var firstName         = ""
var lastName          = ""
var email             = ""
var birthdate         = Date()
var extraNapkins      = false
var frequentRefills   = false
  
}
