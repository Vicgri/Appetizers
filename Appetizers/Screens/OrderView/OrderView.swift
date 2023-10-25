//
//  OrderView.swift
//  Appetizers
//
//  Created by Victoria Grimen on 24/10/2023.
//

import SwiftUI

struct OrderView: View {

@State private var orderItems = MockData.orderItems

var body: some View {
  NavigationView {
    ZStack {
      VStack {
        List {
          ForEach(orderItems) { appetizer in
            AppetizerListCell(appetizer: appetizer)
          }
          .onDelete(perform: deleteItems)
        }
        .listStyle(PlainListStyle())
        
        Button {
          print("Order placed")
        } label: {
          ApButton(title: "$99.99 - Place Order")
        }
        .padding(.bottom, 25)
      }
      
      if orderItems.isEmpty {
        EmptyStates(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
      }
    }
    
    .navigationTitle("Orders")
  }
}
func deleteItems (at offesets: IndexSet) {
  orderItems.remove(atOffsets: offesets)
}

}

#Preview {
OrderView()
}
