//
//  Pokemons.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class Pokemons {

    var name: String
    var type: [elements]
    var gen: String
    var pokedexNum: String
    var height: String
    var pic: String
    
    init(names:String, types: [elements], gens: String, pokedexN: String, hei: String, splash: String) {
        self.name = names
        self.type = types
        self.gen = gens
        self.pokedexNum = pokedexN
        self.height = hei
        self.pic = splash
    }

}


enum elements : String{
    case water = "Water"
    case fire = "Fire"
    case grass = "Grass"
    case flying = "Flying"
    case dragon = "Dragon"
    case poison = "Poison"
}

class pokeSingleton{
    static let shared = pokeSingleton()
    var pokemons = [Pokemons(names: "Bulbizarre", types: [.grass, .poison], gens: "1", pokedexN: "001", hei: "0.7", splash: "Bulbizarre"),
    Pokemons(names: "Herbizarre", types: [.grass, .poison], gens: "1", pokedexN: "002", hei: "1", splash: "Herbizarre"),
    Pokemons(names: "Florizarre", types: [.grass, .poison], gens: "1", pokedexN: "003", hei: "2", splash: "Florizarre"),
    
    
    Pokemons(names: "Salamèche", types: [.grass], gens: "1", pokedexN: "004", hei: "0.6", splash: "Salameche"),
    Pokemons(names: "Reptincell", types: [.grass], gens: "1", pokedexN: "005", hei: "1.1", splash: "Reptincel"),
    Pokemons(names: "Dracaufeu", types: [.grass, .flying], gens: "1", pokedexN: "006", hei: "1.7", splash:  "Dracaufeu"),
    
    Pokemons(names: "Carapuce", types: [.water], gens: "1", pokedexN: "007", hei: "0.5", splash:  "Carapuce")]
}
