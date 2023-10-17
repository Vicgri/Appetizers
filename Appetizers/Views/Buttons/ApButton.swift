//
//  ApButtons.swift
//  Appetizers
//
//  Created by Victoria Grimen on 12/10/2023.
//

import SwiftUI

struct ApButton: View {
  
  let title: LocalizedStringKey
  
    var body: some View {
      Text(title)
        .font(.title3)
        .fontWeight(.semibold)
        .frame(width: 260, height: 50)
        .foregroundColor(.white)
        .background(Color.BrandPrimary)
        .cornerRadius(10)
    }
}

#Preview {
  ApButton(title: "Test Title")
}
