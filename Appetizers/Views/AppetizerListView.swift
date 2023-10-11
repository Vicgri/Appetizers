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
    ZStack {
      NavigationView {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
          
        }
        .navigationTitle("Appetizers")
      }
      .onAppear {
        viewModel.getAppetizers()
      }
      if viewModel.isLoading {
        LoadingView()
      }
    }
    .alert(item: $viewModel.alertItem) { alertItem in
        Alert(title: alertItem.title,
              message: alertItem.message,
              dismissButton: alertItem.dismissButton)
      }
    }
  }
 
#Preview {
  AppetizerListView()
}

