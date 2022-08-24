//
//  PokemonViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class PokemonViewController: UIViewController {
    var pokemons = pokeSingleton.shared.pokemons
    
    @IBOutlet weak var PokeView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokemon"
        
        PokeView.register(UINib(nibName: PokemonTableViewCell.identifier, bundle: nil),  forCellReuseIdentifier: PokemonTableViewCell.identifier)
        PokeView.dataSource = self
        PokeView.delegate = self
            }

}

extension PokemonViewController:  UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemonCell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath) as! PokemonTableViewCell
        let pokemon = pokemons[indexPath.row]
        pokemonCell.setupCell(pokemon: pokemon)
        return pokemonCell
    }

}


extension PokemonViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let poke = pokemons[indexPath.row]
        
       guard let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        else {
           fatalError("fail")
       }
        detailVC.pokemon = poke
        navigationController?.pushViewController(detailVC, animated: true)
    }
        
}
