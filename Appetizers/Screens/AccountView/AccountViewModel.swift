//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Victoria Grimen on 24/10/2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
  
  @Published var firstName = ""
  @Published var lastName = ""
  @Published var email = ""
  @Published var birthdate = Date()
  @Published var extraNapkins = false
  @Published var frequentRefills = false
  
}
