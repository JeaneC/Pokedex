//
//  EvolutionTableViewCell.swift
//  jPokedex
//
//  Created by Jeane Carlos on 7/5/17.
//  Copyright © 2017 Jeane Carlos. All rights reserved.
//

import UIKit

class EvolutionTableViewCell: UITableViewCell {
    @IBOutlet weak var pokemonImg: UIImageView!
    @IBOutlet weak var nextEvoLbl: UILabel!
    @IBOutlet weak var methodLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var vialbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
