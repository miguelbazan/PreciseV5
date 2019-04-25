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

        var a[6]:int;
        var tam: int;
        a[0] = 4;
        a[1] = 3;
        a[2] = 1;
        a[3] = 9;
        a[4] = 0;
        a[5] = 3;
        tam = 6;
        
        function void sort(){
        var i: Int;
        i = 1;
        while(i < tam) {
        var j:int;
        j = 0;
        while(j < tam - 1) {
            if (a[j] > a[j+1]) {
                var temp:int;
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            };
            j = j+1;
        };
        i = i+1;
        };
        }
        function void printArray(){
        var cont:Int;
        cont = 0;
        while(cont < tam) {
        print(a[cont]);
        cont = cont + 1;
        };
        }
        
        

        main(){
        
        printArray();
        sort();
        printArray();


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

