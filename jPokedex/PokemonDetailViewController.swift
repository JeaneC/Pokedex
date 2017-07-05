//
//  PokemonDetailViewController.swift
//  jPokedex
//
//  Created by Jeane Carlos on 7/4/17.
//  Copyright © 2017 Jeane Carlos. All rights reserved.
//

import UIKit

class PokemonDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pokemon: Pokemon!
    var evolutions = [Pokemon]()
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalized
        tableView.rowHeight = 80 //Have to do this manually since storyboard settings don't lock it
        
        pokemon.downloadPokemonDetail {
            self.updateUI()
            //More efficient to have the code here than in the main View Controller. This would only download an invidiual pokemon, rather than downloading the whole database.
            self.tableView.reloadData()
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
            //This will probably be a for each loop in the future
            // I will also probably use Table Views to display multiple evolutions

            //nextEvoImg.image = UIImage(named: "\(pokemon.nextEvoId).png")
            //This is bad code if the pokemon has two evolutions. For instance, eevee's evolutions wouldn't work too well here...
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
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //This is fine
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 //Change this later
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "evoCell", for: indexPath) as? EvolutionTableViewCell {
            cell.pokemonImg.image = UIImage(named: "\(pokemon.nextEvoId).png")
            cell.nextEvoLbl.text = pokemon.nextPokemon
            return cell
        } else {
            return EvolutionTableViewCell()
        }

    }

    
}
