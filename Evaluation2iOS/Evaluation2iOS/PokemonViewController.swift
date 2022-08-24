//
//  PokemonViewController.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class PokemonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var pokemons = [Pokemons]()
    
    @IBOutlet weak var PokeView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokemon"
        
        PokeView.register(UINib(nibName: PokemonTableViewCell.identifier, bundle: nil),  forCellReuseIdentifier: PokemonTableViewCell.identifier)
        PokeView.dataSource = self
        PokeView.delegate = self
        // Do any additional setup after loading the view.
        
        loadData()
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

extension PokemonViewController {
   
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

extension PokemonViewController {
    func loadData() {
        pokemons.append(Pokemons(names: "Bulbizarre", types: .grass, gens: 1, pokedexN: 001, hei: 0.7, splash: UIImage(named: "Bulbizarre")))
        pokemons.append(Pokemons(names: "Herbizarre", types: .grass, gens: 1, pokedexN: 002, hei: 1, splash: UIImage(named: "Herbizarre")))
        pokemons.append(Pokemons(names: "Florizarre", types: .grass, gens: 1, pokedexN: 003, hei: 2, splash: UIImage(named: "Florizarre")))
        
        
        pokemons.append(Pokemons(names: "Salamèche", types: .grass, gens: 1, pokedexN: 004, hei: 0.6, splash: UIImage(named: "Salameche")))
        pokemons.append(Pokemons(names: "Reptincell", types: .grass, gens: 1, pokedexN: 005, hei: 1.1, splash: UIImage(named: "Reptincel")))
        pokemons.append(Pokemons(names: "Dracaufeu", types: .grass, gens: 1, pokedexN: 006, hei: 1.7, splash: UIImage(named: "Dracaufeu")))
        
        pokemons.append(Pokemons(names: "Carapuce", types: .water, gens: 1, pokedexN: 007, hei: 0.5, splash: UIImage(named: "Carapuce")))
    }
}
extension PokemonViewController {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let pokemon = pokemon(at: indexPath)
        else {
            fatalError("Unable to retrieve pokemon")
        }
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailView") as? DetailView
        else {
            fatalError("Unable to instantiate DetailView as DetailView")
        }
        detailVC.pokemon = pokemon
        show(detailVC, sender: nil)
    }
}
