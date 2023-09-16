//
//  ViewController.swift
//  ChooseYourAPI
//
//  Created by Temitope on 16/09/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstButton(_ sender: UIButton) {
        NetworkingManager.makeRequest(requestType: "GET", url: "https://cataas.com/api/cats?tags=cute")
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        NetworkingManager.makeRequest(requestType: "GET", url: "https://api.artic.edu/api/v1/artworks")
    }
    @IBAction func thirdButton(_ sender: UIButton) {
        NetworkingManager.makeRequest(requestType: "GET", url: "https://collectionapi.metmuseum.org/public/collection/v1/objects")
    }
}

