//
//  RecipeTVC.swift
//  Recipe
//
//  Created by Leng Trang on 12/5/20.
//

import UIKit

class RecipeTVC: UIViewController {
    var recipeBook: RecipeBook?
    var recipes: [Recipe]?
    
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeIngredients: UILabel!
    @IBOutlet weak var recipeDirection: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipes = recipeBook?.recipe
        // Do any additional setup after loading the view.
        if recipes!.count >= 1 {
            displayRecipe(index: 0)
        }
    }
    
}

extension RecipeTVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = recipes?.count {
            return count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecipeCell
        cell.title.text = recipes?[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        displayRecipe(index: indexPath.row)
    }
}

extension RecipeTVC {
    func displayRecipe(index: Int){
        recipeTitle.text = ""
        recipeIngredients.text = ""
        recipeDirection.text = ""
        recipeTitle.text = (recipes?[index].title)! + "\r\r\r"
        
        recipeIngredients.text = ""
        if let ingredientsList = recipes?[index].ingredients {
        
            for ingredients in ingredientsList {
                recipeIngredients.text! +=  ingredients + "\r\r"
            }
            
        }
        
        recipeDirection.text = recipes?[index].instruction
    }
}
