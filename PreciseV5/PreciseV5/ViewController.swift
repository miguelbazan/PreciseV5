//
//  ViewController.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 3/4/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import UIKit
import SwiftyJSON


class ViewController: UIViewController {

    var semanticCube: JSON!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        setup()
//        print(semanticCube["1"]["1"]["1"])
        
        
//        print("Hola")

    }
    
    func setup(){
        
        if let path = Bundle.main.path(forResource: "CuboSemantico", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = try JSON(data: data)
                semanticCube = jsonObj["semanticCube"]
                
            } catch let error {
                print("parse error: \(error.localizedDescription)")
            }
        } else {
            print("Invalid filename/path.")
        }
        
    }
    
}

