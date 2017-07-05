This is a Pokedex app using the Pokemon API which can be found on https://pokeapi.co/. We used Alamofire - https://github.com/Alamofire/Alamofire - to parse requests and network calls from the online API.

To open the project file open jPokedex.xcworkspace (this properly embedds Alamofire and other pods into the project)

Example pictures of the app 
![alt text](https://i.imgur.com/l8pk2EV.png)

V 0.00 
- First Commit

V 0.05 
- Initial UI Planning is set up (Search bar, UICollectionview, Imageviews)

V 0.10 
- UI Now Displays all 700+ Pokemon

V 0.20 
- Imported csv.swift from https://github.com/spentak/csvswift. This helps parse csv files.
- Pokemon Font obtained from - http://www.dafont.com/pokemon.font
- Added sound and Pokedex title at the top
- Organized Folders and Files

V 0.30
- Added a search bar feature
- Music is off by default now

V 0.50
- Created Second View Controller and designed the UI (PokemonDetailViewController.swift)
    - The UI was made using layers of stack views.
- Added a segue to the second view controller. For now the example is Ivysaur.

V 0.60
- We integrated Alamofire into our program to parse json files in pokeapi
- Functionalized back button

V 1.00
- The Bio Description now works for the most part
- App now tells you if the pokemon has an evolution
- App properly tells you the pokemon's stats
- Need to Fix/Add in V 2.00
    - The Pokemon's 'moves section
    - The way the app determines the next evolution is very flawed. Need a more reliable stable system of (1) determine how the pokemon will evolve (not just by level) and (2) that a pokemon can evolve into more than one evolution (ex. Eevee has multiple evolutions, but this program only displays the next one)
    - Mega evolutions are not supported
    - Organize the code!

V 1.5 
- Updated the method of retrieval for the next Pokemon evolution
- I created a TableView to show the evolutions. Currently it is incomplete. Use V 1.00 for something more reliable
- Along with the new TableView is it's own file EvolutionTableViewCell
- Added the JViewController, basically an About Me if the user seems to shake the device
- The App Now Properly tells the next evolution assuming the API is correct
    - Funny easter egg, the actual API itself had the next evolution of Jynx to be Electabuzz
