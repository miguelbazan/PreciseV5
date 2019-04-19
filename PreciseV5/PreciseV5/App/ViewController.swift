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
        
        var A : int;
        var B : int;
        var C : int;
        var D : int;
        var E : int;
        var f : int;
        var g : int;
        var h : int;
        var i : int;
        var j : int;
        
        main(){
                A = 5;
        B = 6;
        C = 7;
        D = 1;

        if (A+B>D){
            if (A<B){
                A = 0;
                B = B + D;
            }
            else {
                C = A + B;
            }
        }
        else {
            A = B + C;
        }
            D = B + A * C;
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

