//
//  NetworkManager.swift
//  ChooseYourAPI
//
//  Created by Temitope on 16/09/2023.
//

import Foundation

class NetworkingManager {
    
    private let session: URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func makeRequest(requestType: String, url: String) {
        
        guard let url = URL(string: url) else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = requestType
        
        
        let task = session.dataTask(with: request) { (data, response, error) in
            print(response)
        }
        task.resume()
    }
    
}
