//
//  ViewControllerNew.swift
//  preciseV5_ui
//
//  Created by Andrés Villanueva on 5/5/19.
//  Copyright © 2019 Andrés Villanueva. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController {

    @IBOutlet weak var tvNewCode: UITextView!
    @IBOutlet weak var outputCode: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }
    
    @IBAction func runCode(_ sender: Any) {
        outputCode.text = tvNewCode.text
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
