//
//  ViewController.swift
//  warningMessages
//
//  Created by oğuzhan salkım on 3.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var password2TF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpBtn(_ sender: Any) {
        
        if emailTF.text == "" {
            setAlert(forTitle: "Fatal Error", forMessage: "Check eMail")

        } else if passwordTf.text == "" {
            setAlert(forTitle: "Fatal Error", forMessage: "Check password")
        }else if  passwordTf.text != password2TF.text {
            setAlert(forTitle: "Fatal Error", forMessage: "passwords should be same")
        }else  {
            setAlert(forTitle: "Congrats", forMessage: "Signed up Successfully")
        }
        
        
        
        
        
       
    }
    func setAlert( forTitle: String, forMessage: String  ) {
        let warningMessage = UIAlertController(title: forTitle, message: forMessage, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title:"OK", style: UIAlertAction.Style.default){
            (UIAlertAction) in
            // triggering actions when clicking ok btn
            print("button clicked")
        }
        warningMessage.addAction(okButton)
        self.present(warningMessage, animated: true, completion: nil)
    }
    
}

