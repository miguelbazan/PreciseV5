//
//  TableViewController.swift
//  preciseV5_ui
//
//  Created by Andrés Villanueva on 4/29/19.
//  Copyright © 2019 Andrés Villanueva. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var archivos = [Archivo]()
    var nombreNewArchivo = ""
    
    var hola = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var archivo = Archivo(nombre: "Fibonacci Ciclico", code:
            """
            
            
            """)
        archivos.append(archivo)
        
        archivo = Archivo(nombre: "Fibonacci Recursivo", code:
            """
            program pepe:

            function int fibonacci (int n){
            var ans : int;

            if (n == 0) {
            ans = 0;
            } else {
            if (n == 1){
            ans = 1;
            } else {
            ans = fibonacci(n-1); + fibonacci(n-2);
            };
            };
            return ans;
            }

            main(){
            print(fibonacci(5));
            }

            end;;
            
            """)
        archivos.append(archivo)
        
        archivo = Archivo(nombre: "Factorial Ciclico", code:
            """
            
            """)
        archivos.append(archivo)
        
        archivo = Archivo(nombre: "Factorial Recursivo", code:
            """
            
            
            """)
        archivos.append(archivo)
        
        archivo = Archivo(nombre: "Sort", code:
            """
            
            
            """)
        archivos.append(archivo)
        
        archivo = Archivo(nombre: "Find", code:
            """
            
            
            """)
        archivos.append(archivo)
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return archivos.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        //cell.textLabel?.text = archivos[indexPath.row].nombre
        cell.lbLabel.text = archivos[indexPath.row].nombre
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 120;//Choose your custom row height
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(archivos.count)
        
        let vistCode = segue.destination as! ViewController
        let indexPath = tableView.indexPathForSelectedRow!
        
        vistCode.archivoPasar = archivos[indexPath.row]
        vistCode.indexArchivo = indexPath.row
        
    }
    @IBAction func newCode(_ sender: Any) {
        
        print("hola")
        //var newCode = segue.destination as! ViewControllerNew
        
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
            self.nombreNewArchivo = (alert?.textFields![0].text)!
            
            print(self.nombreNewArchivo)
            let archivoFinal = Archivo(nombre: self.nombreNewArchivo, code: """
                program pepe:
                
                
                main(){
                
                }
                end;
                """)
            print(archivoFinal)
            self.archivos.append(archivoFinal)
            
            self.reload()
        }))
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        
        

        
        //let vistCode = segue.destination as! ViewController
        //let indexPath = tableView.indexPathForSelectedRow!
        
        //vistCode.archivo = archivos.last
    }
    
    func reload()
    {
        tableView.reloadData()
    }
}


