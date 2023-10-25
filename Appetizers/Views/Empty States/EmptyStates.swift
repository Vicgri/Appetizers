//
//  EmptyStates.swift
//  Appetizers
//
//  Created by Victoria Grimen on 25/10/2023.
//

import SwiftUI

struct EmptyStates: View {

  let imageName: String
  let message: String
  
var body: some View {
  ZStack {
    Color(.systemBackground)
      .edgesIgnoringSafeArea(.all)
    
    VStack {
      Image(imageName)
        .resizable()
        .scaledToFit()
        .frame(height: 150)
      
      Text(message)
        .font(.title3)
        .fontWeight(.semibold)
        .multilineTextAlignment(.center)
        .foregroundColor(.secondary)
        .padding()
    }
    .offset(y: -45)
  }
}
}

#Preview {
  EmptyStates(imageName: "empty-order", message: "This is our test message")
}
