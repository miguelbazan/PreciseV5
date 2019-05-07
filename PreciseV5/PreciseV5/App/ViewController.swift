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
    var archivo : Archivo!
    

    @IBOutlet weak var codeArchivo: UITextView!
    @IBOutlet weak var viewCode: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = archivo.nombre
        codeArchivo.text = archivo.code
    
    }
    
    func showCompileError(_ message: String) {
        let text = "COMPILE ERROR: \n\(message) "
        viewCode.text = text
    }
    
    @IBAction func runCodigo(_ sender: Any) {
        let input = codeArchivo.text!
        Heart.shared.runCode(input: input, viewc: self)
    }
    
    func showResults(results: [String], error: Bool) {
        var text = ""
        for result in results {
            text += (result + "\n")
        }
        viewCode.text = text
    }
}

