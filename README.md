This is a Pokedex app using the Pokemon API which can be found on https://pokeapi.co/. We used Alamofire - https://github.com/Alamofire/Alamofire - to parse requests from the online API.

To open the project file open jPokedex.xcworkspace (this properly embedds Alamofire and other pods into the project)


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
