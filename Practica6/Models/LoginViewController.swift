//
//  LoginViewController.swift
//  Practica6
//
//  Created by MacBook on 7/6/19.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var txtuser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    let user = "cecy"
    let pass = "cecy"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Login(_ sender: Any) {
        
        //1 paso: validar que no esten vacios los campos
        if (txtuser.text!.isEmpty || txtPassword.text!.isEmpty) {
            let alert = UIAlertController(title: "Alerta", message: "Debe llenar todos los campos, son obligatorios", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
            //2 paso: Validar que concuerden con info los campos
        else if (txtuser.text! == user && txtPassword.text! == pass)
            
            //3 paso: Realizar accion correspondiente
        {
            performSegue(withIdentifier: "Ingresar", sender: nil)
            let alert = UIAlertController(title: "Bienvenido", message: "Credenciales correctas", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
            
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Credenciales incorrectas", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Reintentar", style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func ForgotPassword(_ sender: Any) {
        let alert = UIAlertController(title: "¿Recuperar su contraseña?", message: "Se mando código al correo registrado", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cambiar Contraseña", style: .default, handler: { (action) in
            print("¡servicio no disponible, intente más tarde!")
        } ))
        
        present(alert, animated: true, completion: nil)
        
    }
    
}
