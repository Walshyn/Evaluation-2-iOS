//
//  PokemonViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var PokeView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokemon"
        
        PokeView.register(UINib(nibName: PokemonTableViewCell.identifier, bundle: nil),  forCellReuseIdentifier: PokemonTableViewCell.identifier)
        PokeView.dataSource = self
        PokeView.delegate = self
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
