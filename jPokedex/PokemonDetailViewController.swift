//
//  PokemonDetailViewController.swift
//  jPokedex
//
//  Created by Jeane Carlos on 7/4/17.
//  Copyright © 2017 Jeane Carlos. All rights reserved.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalized
        print (pokemon.pokedexId)
        pokemon.downloadPokemonDetail {
            self.updateUI()
            //More efficient to have the code here than in the main View Controller. This would only download an invidiual pokemon, rather than downloading the whole database.
        }
        
        
    }
    func updateUI() {
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        weightLbl.text = pokemon.weight
        heightLbl.text = pokemon.height
        pokedexLbl.text = String(pokemon.pokedexId)
        mainImg.image = UIImage(named: "\(pokemon.pokedexId).png")
        typeLbl.text = pokemon.type
        
        if pokemon.evolvable {
            nextEvoImg.image = UIImage(named: "\(pokemon.pokedexId+1).png")
            //This is bad code if the pokemon has two evolutions. For instance, eevee's evolutions wouldn't work too well here...
            currentEvoImg.image = mainImg.image
        }
        evoLbl.text = pokemon.nextEvolutionTxt
        descriptionLbl.text = pokemon.description

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
