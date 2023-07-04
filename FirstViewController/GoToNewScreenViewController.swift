//
//  goToNewScreenViewController.swift
//  FirstViewController
//
//  Created by Giovani on 29/06/23.
//

import UIKit

class GoToNewScreenViewController: UIViewController {
    
    var signInContainer : UIView?
    var emailTextField : UITextField? // declaramos un input
    var icon1 : UIImageView? //Añadir imagenes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        initUI() //Aqui muestro o traigo la funcion
        // Do any additional setup after loading the view.
    }
    
    //Inicializamos la variable
    func initUI(){
        signInContainer = UIView(frame: CGRect(x: 50, y: 150, width: 300, height: 400))
        signInContainer?.backgroundColor = .lightGray
        signInContainer?.layer.cornerRadius = 15
        view.addSubview(signInContainer!)
        
        emailTextField = UITextField(frame: CGRect(x: 45, y: 140, width: 200, height: 35))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "  Add your name"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        view.addSubview(emailTextField!)
        
        emailTextField = UITextField(frame: CGRect(x: 45, y: 50, width: 200, height: 35))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "         Add your name"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        signInContainer?.addSubview(emailTextField!)  //Aqui anido nuestro componente para posicionarlos
        
        emailTextField = UITextField(frame: CGRect(x: 45, y: 95, width: 200, height: 35))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "         Add your e-mail"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        signInContainer?.addSubview(emailTextField!)  //Aqui anido nuestro componente para posicionarlos
        
        emailTextField = UITextField(frame: CGRect(x: 45, y: 140, width: 200, height: 35))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "Add your password"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        signInContainer?.addSubview(emailTextField!)  //Aqui anido nuestro componente para posicionarlos
        
        //Seccion de añadir iconos o imagenes
        icon1 = UIImageView(frame: CGRect(x: 50, y: 55, width: 25, height: 25))
        icon1?.image = UIImage(systemName: "person.badge.plus") //Iconos de sistema de apple
        signInContainer?.addSubview(icon1!)
        
        icon1 = UIImageView(frame: CGRect(x: 50, y: 100, width: 25, height: 25))
        icon1?.image = UIImage(named: "hombre")
        signInContainer?.addSubview(icon1!)
            
        
        //Uso de los Constraints - para la parte responsiva es muy util
        signInContainer = UIView()
        signInContainer?.backgroundColor = .lightGray
        view.addSubview(signInContainer!)
        
        signInContainer?.translatesAutoresizingMaskIntoConstraints = false
        signInContainer?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        signInContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        signInContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        signInContainer?.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -100).isActive = true
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
