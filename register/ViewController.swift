//
//  ViewController.swift
//  register
//
//  Created by Kevin Badinca on 14/10/2019.
//  Copyright © 2019 Kevin Badinca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.frame.width
        let height = self.view.frame.height
        let space = CGFloat(height/50)
        
        let footer = UILabel(frame: CGRect(x: 15, y:height-40, width: width-30, height: 40))
        footer.text = "Lorem ipsum sit dolor amet..."
        footer.textColor = .white
        footer.textAlignment = .center
        
        let button = UIButton(frame: CGRect(x: 15, y: footer.frame.origin.y - space - height/20, width: width-30, height: height/20))
        button.setTitle("S'inscrire", for: .normal)
        button.backgroundColor = .gray
        
        let passConfirm = UITextField(frame: CGRect(x: 15, y: button.frame.origin.y - space - height/20, width: width-30, height: height/20))
        passConfirm.placeholder = "Confirmer le mot de passe"
        passConfirm.backgroundColor = .white
        passConfirm.delegate = self as? UITextFieldDelegate
        passConfirm.borderStyle = .roundedRect
        passConfirm.isSecureTextEntry = true
        passConfirm.tag = 4
        
        let password = UITextField(frame: CGRect(x: 15, y: passConfirm.frame.origin.y - space - height/20, width: width-30, height: height/20))
        password.placeholder = "Mot de passe"
        password.backgroundColor = .white
        password.delegate = self as? UITextFieldDelegate
        password.borderStyle = .roundedRect
        password.isSecureTextEntry = true
        password.tag = 3
        
        let email = UITextField(frame: CGRect(x: 15, y: password.frame.origin.y - space - height/20, width: width-30, height: height/20))
        email.placeholder = "Email"
        email.backgroundColor = .white
        email.delegate = self as? UITextFieldDelegate
        email.borderStyle = .roundedRect
        email.tag = 2
        
        let lastname = UITextField(frame: CGRect(x: 15, y: email.frame.origin.y - space - height/20, width: width-30, height: height/20))
        lastname.placeholder = "Nom"
        lastname.backgroundColor = .white
        lastname.borderStyle = .roundedRect
        lastname.delegate = self as? UITextFieldDelegate
        lastname.tag = 1
        
        let firstname = UITextField(frame: CGRect(x: 15, y: lastname.frame.origin.y - space - height/20, width: width-30, height: height/20))
        firstname.placeholder = "Prénom"
        firstname.backgroundColor = .white
        firstname.borderStyle = .roundedRect
        firstname.delegate = self as? UITextFieldDelegate
        firstname.tag = 0
        
        let imageStar = UIImage(named: "nasa-logo.png")
        let imageViewStar = UIImageView(image: imageStar!)
        imageViewStar.frame = CGRect(x: width/2-100, y: height/4-100, width: 200, height: 200)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "space.jpg")!)
        self.view.addSubview(footer)
        self.view.addSubview(button)
        self.view.addSubview(passConfirm)
        self.view.addSubview(password)
        self.view.addSubview(email)
        self.view.addSubview(lastname)
        self.view.addSubview(firstname)
        self.view.addSubview(imageViewStar)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag = textField.tag + 1
        
        if let nextResponder = textField.superview?.viewWithTag(nextTag) {
            nextResponder.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }

}
