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

        var a : int;

        function int fibo(int n){

        var ans : int;

        if (n<1 || n==1)
        {
        ans = n;
        } else{
        var fibo : int;
        fibo = 1;
        var fiboprev : int;
        fiboprev = 1;
        var cont : int;

        cont = 2;

        while (cont < n)
        {
            var temp : int;
            temp = fibo;
            fibo = fibo + fiboprev;
            fiboprev = temp;
            cont = cont + 1;
        };
        ans = fibo;
        };
        return ans;
        }

        main(){

        a = fibo(5);
        print(a);

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

