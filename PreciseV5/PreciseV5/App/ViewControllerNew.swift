//
//  ViewControllerNew.swift
//  preciseV5_ui
//
//  Created by Andrés Villanueva on 5/5/19.
//  Copyright © 2019 Andrés Villanueva. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController {

    @IBOutlet weak var code: UITextView!
    @IBOutlet weak var outputCode: UITextView!
    
    var otherViewController: TableViewController = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Nombre del Archivo", message: nil, preferredStyle: .alert)
        
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = "Nombre archivo"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { [weak alert] (_) in
            print("cerrar")
        }))
        
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { [weak alert] (_) in
            let nombreArchivo = alert?.textFields![0]
            
            print(nombreArchivo!)
            
            self.title = nombreArchivo!.text
            
            self.tvNewCode.text = """
            program pepe:
            
            
            main(){
            
            }
            end;
            """
        }))
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }*/
    
        func showCompileError(_ message: String) {
            let text = "COMPILE ERROR: \n\(message) "
            outputCode.text = text
        }
        
       /* func runCode(_ sender: Any) {
            let input = code.text!
            Heart.shared.runCode(input: input, viewc: ViewControllerNew.self)
    }*/
        
        func showResults(results: [String], error: Bool) {
            var text = ""
            for result in results {
                text += (result + "\n")
            }
            outputCode.text = text
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
