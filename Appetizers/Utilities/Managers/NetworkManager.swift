//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Victoria Grimen on 11/10/2023.
//

import UIKit

final class NetworkManager: NetworkManagerProtocol {


// access the singleton
static let shared = NetworkManager()

// the cache takes the key (NSString) and then the object (UIImage)
private let cache = NSCache<NSString, UIImage> ()

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
    if let _ = error {
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

func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void) {
  
  let cacheKey = NSString(string: urlString)
  
  if let image = cache.object(forKey: cacheKey) {
    completed(image)
    return
  }
  
  guard let url = URL(string: urlString) else {
    completed(nil)
    return
  }
  let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
    
    guard let data = data, let image = UIImage(data: data) else {
      completed(nil)
      return
    }
    
    //cachekey is the url string we are passing in
    self.cache.setObject(image, forKey: cacheKey)
    completed(image)
  }
  
  task.resume()
  
}

}
