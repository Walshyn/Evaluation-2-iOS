//
//  Pokemons.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class Pokemons {

    var name: String
    var type: elements
    var gen: Int
    var pokedexNum: Int
    var height: Float
    var pic: UIImage?
    
    init(names:String, types: elements, gens: Int, pokedexN: Int, hei: Float, splash: UIImage?) {
        self.name = names
        self.type = types
        self.gen = gens
        self.pokedexNum = pokedexN
        self.height = hei
        self.pic = splash
    }

}


enum elements{
    case water
    case fire
    case grass
    case flying
    case dragon
    case poison
}

