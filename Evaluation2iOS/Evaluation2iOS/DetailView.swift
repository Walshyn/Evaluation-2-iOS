//
//  DetailView.swift
//  Evaluation2iOS
//
//  Created by Carme on 24/08/2022.
//

import UIKit

class DetailView: UIView {
    @IBOutlet weak var pokePic: UIImageView!
    @IBOutlet weak var pokedexNum: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var gen: UILabel!
    var pokemon: Pokemons!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
