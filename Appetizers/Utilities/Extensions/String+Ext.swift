//
//  String+Ext.swift
//  Appetizers
//
//  Created by Victoria Grimen on 24/10/2023.
//

import Foundation
import RegexBuilder

extension String {
  
  var isValidEmail: Bool {
    let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
    return emailPredicate.evaluate(with: self)
    
    
  }
}
