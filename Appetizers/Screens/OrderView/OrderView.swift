//
//  OrderView.swift
//  Appetizers
//
//  Created by Victoria Grimen on 24/10/2023.
//

import SwiftUI

struct OrderView: View {

  @EnvironmentObject var order: Order
  
// MockData before we got access to the real orders.
// @State private var orderItems = MockData.orderItems

var body: some View {
  NavigationView {
    ZStack {
      VStack {
        List {
          //ForEach(orderItems)
          ForEach(order.items) { appetizer in
            AppetizerListCell(appetizer: appetizer)
          }
          .onDelete(perform: order.deleteItems)
        }
        .listStyle(PlainListStyle())
        
        Button {
          print("Order placed")
        } label: {
          ApButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
        }
        .padding(.bottom, 25)
      }
      
      //if orderItems.isEmpty
      if order.items.isEmpty {
        EmptyStates(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
      }
    }
    
    .navigationTitle("Orders")
  }
}

}

#Preview {
OrderView()
}
