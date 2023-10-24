//
//  NetworkManagerProtocol.swift
//  Appetizers
//
//  Created by Victoria Grimen on 24/10/2023.
//

import Foundation
import UIKit

protocol NetworkManagerProtocol {
  func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void)
  func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void)
  
}
