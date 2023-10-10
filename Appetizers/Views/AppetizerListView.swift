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
        
        HStack {
          Image("asian-flank-steak")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
        }
      }
      .navigationTitle("Appetizers")
    }
  }
}

#Preview {
    AppetizerListView()
}
