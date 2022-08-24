//
//  PickerViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit
import SafariServices
class PickerViewController: UIViewController {
    @IBOutlet weak var pickerPoke: UIPickerView!
    @IBOutlet weak var picPoke: UIImageView!
    @IBAction func moreInfo() {
        if let url = URL(string: NSLocalizedString("PokeUrl", comment: "")){
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerPoke.dataSource = self
        pickerPoke.delegate = self
        
        self.title = "Picker"
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

extension PickerViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return pokeSingleton.shared.pokemons.count
        case 1:
            return Colors.shared.colors.count
        default:
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            picPoke.image = UIImage(named: pokeSingleton.shared.pokemons[row].pic)
        default:
            picPoke.backgroundColor = Colors.shared.colors[row]
      
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return pokeSingleton.shared.pokemons[row].name
        case 1:
            return Colors.shared.colors[row].accessibilityName
        default:
            return nil
        }
    }
}
