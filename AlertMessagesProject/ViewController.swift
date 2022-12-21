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
        
        let WarningMessage = UIAlertController(title: "Error Message", message: "Email is not correct", preferredStyle: UIAlertController.Style.alert)
        let OkeyButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //OK Button'una tiklaninca olacaklar.
            print("Ok Button tapped...")
        }
        
        WarningMessage.addAction(OkeyButton)
        self.present(WarningMessage, animated: true, completion: nil)
    }
    
}

