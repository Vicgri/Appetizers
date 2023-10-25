//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Victoria Grimen on 10/10/2023.
//

import SwiftUI

@main
struct AppetizersApp: App {
  
  var order = Order()
  
    var body: some Scene {
        WindowGroup {
          AppetizerTabView().environmentObject(order)
        }
    }
}
