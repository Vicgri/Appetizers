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
  @State private var isShowingDetail = false
  @State private var selectedAppetizer: Appetizer?
  
  var body: some View {
    ZStack {
      NavigationView {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
            .onTapGesture {
              selectedAppetizer = appetizer
              isShowingDetail = true
            }
          
        }
        .navigationTitle("Appetizers")
        .disabled(isShowingDetail)
      }
      .onAppear {
        viewModel.getAppetizers()
      }
      .blur(radius: isShowingDetail ? 20 : 0)
      
      if isShowingDetail {
        AppetizerDetailView(appetizer: selectedAppetizer!,
                            isShowingDetail: $isShowingDetail)
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

