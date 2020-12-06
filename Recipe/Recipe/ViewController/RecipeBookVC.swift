//
//  RecipeBookVC.swift
//  Recipe
//
//  Created by Leng Trang on 12/5/20.
//

import UIKit

class RecipeBookVC: UIViewController {
    var recipeBooks: [RecipeBook] = [RecipeBook]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeBooks = MockDBS.shared.userLogged
    }
}

extension RecipeBookVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecipeBookVCCell
        
        cell.textLabel?.text = recipeBooks[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showRecipe", sender: indexPath.row)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipe" {
            if let destination = segue.destination as? RecipeTVC {
                let index = sender as! Int
                destination.recipeBook = MockDBS.shared.userLogged[index]
            }
        }
//        if segue.identifier == "MySegueId" {
//            if let nextViewController = segue.destination as? NextViewController {
//                    nextViewController.valueOfxyz = "XYZ" //Or pass any values
//                    nextViewController.valueOf123 = 123
//            }
//        }
    }
}

class RecipeBookVCCell: UITableViewCell {

}
