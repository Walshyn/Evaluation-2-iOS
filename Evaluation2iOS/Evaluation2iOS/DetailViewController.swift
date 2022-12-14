//
//  DetailViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 24/08/2022.
//

import UIKit
import SafariServices
//MARK: Details view config
class DetailViewController: UIViewController {
    @IBOutlet weak var pokePic: UIImageView!
    @IBOutlet weak var pokedexNum: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var gen: UILabel!
    @IBAction func moreInfo() {
        if let url = URL(string: NSLocalizedString("PokeUrl", comment: "")){
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
        }
    }
    var pokemon: Pokemons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokePic.image = UIImage(named: pokemon.pic)
        pokedexNum.text = "# \(pokemon.pokedexNum)"
        name.text = pokemon.name
        type.text = "Type: \(pokemon.type.reduce("") { $0 + " / " + $1.rawValue }.dropFirst(3).description)"
        height.text = "Height: \(pokemon.height) m"
        gen.text = "\(pokemon.gen) generation"
    }

}
