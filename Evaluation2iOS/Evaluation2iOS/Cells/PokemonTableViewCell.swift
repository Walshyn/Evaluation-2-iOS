//
//  PokemonTableViewCell.swift
//  Evaluation2iOS
//
//  Created by Carme on 23/08/2022.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    static let identifier = "PokemonTableViewCell"
    
    @IBOutlet var pokePIc: UIImageView!
    @IBOutlet var pokeLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
