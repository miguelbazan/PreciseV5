//
//  ViewController.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 3/4/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import UIKit
import SwiftyJSON
import Antlr4


class ViewController: UIViewController {

    var semanticCube: JSON!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        print(semanticCube["1"]["1"]["1"])
        
        
        let input = """
        program pepe:
        
        
        var iR : float;
        var iJ : float;

        main(){

        iR = 20.5;
        iJ = 3.2;

        }
        end;

        """
        
//     setup()
        
        Heart.shared.runCode(input: input)
        

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

