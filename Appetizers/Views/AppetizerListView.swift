//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Victoria Grimen on 10/10/2023.
//

import SwiftUI

struct AppetizerListView: View {
  var body: some View {
    NavigationView {
      List(MockData.appetizers) { appetizer in
        
      AppetizerListCell(appetizer: appetizer)
        
      }
      .navigationTitle("Appetizers")
    }
  }
}

#Preview {
    AppetizerListView()
}
