//
//  NetworkManager.swift
//  ChooseYourAPI
//
//  Created by Temitope on 16/09/2023.
//

import Foundation

class NetworkingManager {
    
    static func makeRequest(requestType: String, url: String) {
        let session: URLSession = URLSession.shared
        guard let url = URL(string: url) else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = requestType
        
        
        let task = session.dataTask(with: request) { (data, response, error) in
           
            do{
                let jsonObject = try JSONSerialization.jsonObject(with: data!)
                print(data)
                
            } catch {}
        }
        task.resume()
    }
    
}
