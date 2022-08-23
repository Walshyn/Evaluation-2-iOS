//
//  LogInChoiceViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class LogInChoiceViewController: UIViewController {
    @IBOutlet weak var mailLbl: UITextField!
    @IBOutlet weak var pswLbl: UITextField!
    @IBAction func connectionButton() {
        //let emailRegEx = "[A-Z0-9a-Z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        //let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        if mailLbl.text?.isEmpty == true || mailLbl.text?.contains("@") == false {
            let alert = UIAlertController(title: "Failed", message: "Invalid LogIn!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true, completion: nil)
        }
        
//        else if !(predicate.evaluate(with: mailLbl.text)) {
//            let alert = UIAlertController(title: "Invalid LogIn", message: "You may enter a mail adress", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "OK", style: .default))
//            present(alert, animated: true, completion: nil)
//
//        }
        else if pswLbl.text == ""{
            let alert = UIAlertController(title: "Failed", message: "Invalid Password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true, completion: nil)
        }
        else {
            if let connected = storyboard?.instantiateViewController(withIdentifier: "TabBarConnected") {
                present(connected, animated: true)
                
            }
        }
    }
    @IBOutlet var logInPic: UIImageView!
    @IBAction func closeLog() {
        dismiss(animated: true)
    }
    var choicePic: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        logInPic.image = choicePic
        
        mailLbl.text = "ara@"
        pswLbl.text = "13245"
        
        
        mailLbl.placeholder = "Email"
        pswLbl.placeholder = "Password"
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
