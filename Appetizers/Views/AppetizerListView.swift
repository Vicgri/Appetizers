//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Victoria Grimen on 10/10/2023.
//

import SwiftUI

struct AppetizerListView: View {
  
  // listening to the changes in AppertizerListViewModel
  @StateObject var viewModel = AppetizerListViewModel()
  
  var body: some View {
    NavigationView {
      List(viewModel.appetizers) { appetizer in
        
        AppetizerListCell(appetizer: appetizer)
        
      }
      .navigationTitle("Appetizers")
    }
    .onAppear{
      viewModel.getAppetizers()
    }
  }
 
  
}

#Preview {
  AppetizerListView()
}
