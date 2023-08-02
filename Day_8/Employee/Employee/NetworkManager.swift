//
//  NetworkManager.swift
//  Employee
//
//  Created by khaledsobh on 31/07/2023.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchEmployees(completion: @escaping ([Employee]?, Error?) -> Void) {
        guard let url = URL(string: "https://dummy.restapiexample.com/api/v1/employees") else {
            completion(nil, NSError(domain: "InvalidURL", code: 0, userInfo: nil))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let data = data else {
                completion(nil, NSError(domain: "NoData", code: 0, userInfo: nil))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let result = try decoder.decode(EmployeeResult.self, from: data)
                completion(result.data, nil)
            } catch let error {
                completion(nil, error)
            }
        }.resume()
    }
}
