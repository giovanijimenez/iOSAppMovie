//
//  ViewController.swift
//  FirstViewController
//
//  Created by Giovani on 27/06/23.
//

import UIKit

class ViewController: UIViewController {

    //Variable UIView
    var newView : UIView?
    
    var newButton : UIButton? //Es de tipo opcional ? - no sabemos cuando la vamos a usar
    var newButton2 : UIButton?
    var newLabel : UILabel?
    //almacenamos el color en una variable
    var bgColor = UIColor(red: 206/255, green: 239/255, blue: 127/255, alpha: 1)
    var textColor = UIColor(red: 98/255, green: 14/255, blue: 161/255, alpha: 1)

    //Accedemos a tamaños de dispositivo Algo responsivo
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    
    //Llamamos a nuestra vista
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bgColor
        //Mandamos a llamar a la vista o a la funcion
        initElements() //MAndamos a llamar con esta funcion desde la linea 29
    }
    
    //Primiera funcion
    func initElements(){
        //esta funcion ayuda a inicializar nuestros componentes
        newView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
        newView?.backgroundColor = .white
        view.addSubview(newView!)
        
        //Step 1:
        newLabel = UILabel(frame: CGRect(x: 100, y: 20, width: 300, height: 200))
        //Step 2:
        newLabel?.textColor = .black
        newLabel?.text = "Hola Usuario :) "
        newLabel?.font = UIFont(name: "Arial Bold", size: 28)
        //Step 3:
        view.addSubview(newLabel!)
        
        //Button1
        newButton = UIButton(frame: CGRect(x: 120, y: 630, width: 150, height: 50))
        newButton?.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
        newButton?.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Thin" , size: 25)
        newButton?.layer.cornerRadius = 15
        newButton?.setTitle("Sign up", for: .normal)
        newButton2?.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        view.addSubview(newButton!) //Usamos signo de admiracion ! para hacer el unboxing
        
        //Button2
        newButton2 = UIButton(frame: CGRect(x: 120, y: 712, width: 150, height: 50))
        newButton2?.backgroundColor = .black
        newButton2?.layer.cornerRadius = 15
        newButton2?.setTitle("Sign in", for: .normal)
        newButton2?.addTarget(self, action: #selector(goToNewScreen), for: .touchUpInside)
        view.addSubview(newButton2!)
        
        
        //Button2
        newButton2 = UIButton(frame: CGRect(x: 120, y: 512, width: 150, height: 50))
        newButton2?.backgroundColor = .black
        newButton2?.layer.cornerRadius = 15
        newButton2?.setTitle("Sign Up", for: .normal)
        newButton2?.addTarget(self, action: #selector(goToSignUp), for: .touchUpInside)
        view.addSubview(newButton2!)
    }
    
    //Link new screen
    @objc func goToNewScreen(){
        print("signInButton pressed")
              let signInVC = GoToNewScreenViewController()
              //signInVC.modalPresentationStyle = .fullScreen
              present(signInVC, animated: true)
              
    }
    
    @objc func goToSignUp(){
        print("signUpButton pressed")
              let signUpVC = SignUpViewController()
              //signInVC.modalPresentationStyle = .fullScreen
              present(signUpVC, animated: true)
              
    }
    

}

