//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Victoria Grimen on 11/10/2023.
//

import Foundation

final class NetworkManager {
  
  // access the singleton
  static let shared = NetworkManager()
  
  static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
  
  //the endpoint of the URL we want to access
  private let appetizerURL = baseURL + "appetizers"
  
  private init() {}
  
  // returns an array of appetizers, if not get the failure case
  func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
    
    guard let url = URL (string: appetizerURL) else {
      completed(.failure(.invalidURL))
      return
    }
    
    // network call
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
      guard let error = error else {
        completed(.failure(.unableToComplete))
        return
      }
      
      guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        completed(.failure(.invalidResponse))
        return
      }
      guard let data = data else {
        completed(.failure(.invalidData))
        return
      }
      
      //decode the data from AppetizerResponse that holds [] of appetizers, and the data created above
      do {
        let decoder = JSONDecoder()
        let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
        
        // calling the property request from the modek AppetizerResponse in Appetizer
        completed(.success(decodedResponse.request))
      } catch {
        completed(.failure(.invalidData))
      }
    }
    task.resume()
  }
  
  
  
  
}
