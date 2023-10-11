//
//  LoadingView.swift
//  Appetizers
//
//  Created by Victoria Grimen on 11/10/2023.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
  func makeUIView(context: Context) -> UIActivityIndicatorView {
    let activityIndicatorView = UIActivityIndicatorView(style: .large)
    activityIndicatorView.color = UIColor.BrandPrimary
    activityIndicatorView.startAnimating()
    return activityIndicatorView
  }
  
  func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
  
}

struct LoadingView: View {
  var body: some View {
    ZStack {
      Color(.systemBackground)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
      ActivityIndicator()
    }
  }
}
