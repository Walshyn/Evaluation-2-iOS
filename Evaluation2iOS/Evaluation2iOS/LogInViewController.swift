//
//  LogInViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class LogInViewController: UIViewController {
//MARK: LogIn screen creation
    
    @IBOutlet weak var connexionLbl: UILabel!
    @IBOutlet weak var pokeHeader: UIImageView!
    @IBAction func googleButton() {
        if let logIn = storyboard?.instantiateViewController(withIdentifier: "LogInChoiceViewController") as? LogInChoiceViewController {
            logIn.choicePic = UIImage.init(named: "google_header")
            logIn.modalPresentationStyle = .fullScreen
            present(logIn, animated: true)
            
        }
        
        
    }
    @IBAction func facebookButton() {
        if let logIn = storyboard?.instantiateViewController(withIdentifier: "LogInChoiceViewController") as? LogInChoiceViewController {
            logIn.choicePic = UIImage.init(named: "facebook_header")
            logIn.modalPresentationStyle = .fullScreen
            present(logIn, animated: true)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
