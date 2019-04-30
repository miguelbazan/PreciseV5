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
        
        let input = """

        program pepe:
        var i: int;
        var j: int;
        var k: int;
        
        

        main(){
        
        i = 2;
        j = 8;

        k = i + j;
        print(k);

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
    
//    func showResults(results: [String], error: Bool) {
////        consoleTextView.textColor = error ? .textError : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//
//        var text = ""
//        for result in results {
//            text += (result + "\n")
//        }
//    }
    
  
    
}

