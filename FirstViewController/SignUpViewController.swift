//
//  SignUpViewController.swift
//  FirstViewController
//
//  Created by Giovani on 29/06/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    var bgColor = UIColor(red: 206/255, green: 239/255, blue: 127/255, alpha: 1)
    var signInContainer : UIView?
    var emailTextField : UITextField? // declaramos un input
    var icon1 : UIImageView? //Añadir imagenes
    var newButton2 : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bgColor
        initUI()
        // Do any additional setup after loading the view.
    }
    
    //Inicializamos la variable
    func initUI(){
       /* signInContainer = UIView(frame: CGRect(x: 50, y: 150, width: 300, height: 400))
        signInContainer?.backgroundColor = .lightGray
        signInContainer?.layer.cornerRadius = 15
        view.addSubview(signInContainer!)*/
        
        
    
    //Uso de los Constraints - para la parte responsiva es muy util
    signInContainer = UIView()
    signInContainer?.backgroundColor = .white
    view.addSubview(signInContainer!)
    
    signInContainer?.translatesAutoresizingMaskIntoConstraints = false
        
    signInContainer?.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    signInContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    signInContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
    signInContainer?.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -300).isActive = true
        
        emailTextField = UITextField(frame: CGRect(x: 70, y: 50, width: 200, height: 35))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "         Add your name"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        signInContainer?.addSubview(emailTextField!)  //Aqui anido nuestro componente para posicionarlos
        
        emailTextField = UITextField(frame: CGRect(x: 70, y: 95, width: 200, height: 35))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "         Add your e-mail"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        signInContainer?.addSubview(emailTextField!)  //Aqui anido nuestro componente para posicionarlos
        
        emailTextField = UITextField(frame: CGRect(x: 70, y: 150, width: 200, height: 40))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "     Add your password"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        signInContainer?.addSubview(emailTextField!)  //Aqui anido nuestro componente para posicionarlos
        
        //Seccion de añadir iconos o imagenes
        icon1 = UIImageView(frame: CGRect(x: 75, y: 55, width: 25, height: 25))
        icon1?.image = UIImage(systemName: "person.badge.plus") //Iconos de sistema de apple
        signInContainer?.addSubview(icon1!)
        
        icon1 = UIImageView(frame: CGRect(x: 75, y: 100, width: 25, height: 25))
        icon1?.image = UIImage(named: "hombre")
        signInContainer?.addSubview(icon1!)
        
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
