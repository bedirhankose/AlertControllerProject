//
//  ViewController.swift
//  AlertMessagesProject
//
//  Created by Bedirhan Köse on 21.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignUpLabel: UILabel!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var NewPassTextField: UITextField!
    @IBOutlet weak var ConfirmPassTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SignUpTapped(_ sender: Any) {
        
        if EmailTextField.text == "" {
            //Emailini girmemissin.
            AlertCreated(titleInput: "Error!", MessageInput: "Email is not correct")
            
        } else if NewPassTextField.text == "" {
            //Parolani girmemissin.
            AlertCreated(titleInput: "Error!", MessageInput: "Password is not correct")
            
        } else if NewPassTextField.text != ConfirmPassTextField.text {
            //Parolalar uyusmuyor.
            AlertCreated(titleInput: "Error!", MessageInput: "Passwords did not match")
    
            
        } else {
            //Kayit basarili.
            AlertCreated(titleInput: "Congrats!", MessageInput: "You registered..!")
            
        }
        
    }
    
    func AlertCreated(titleInput: String, MessageInput: String) {
        let WarningMessage = UIAlertController(title: titleInput, message: MessageInput, preferredStyle: UIAlertController.Style.alert)
        let OkeyButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //OK Button'una tiklaninca olacaklar.
            print("Ok Button tapped...")
        }
        
        WarningMessage.addAction(OkeyButton)
        self.present(WarningMessage, animated: true)
    }
    
}

