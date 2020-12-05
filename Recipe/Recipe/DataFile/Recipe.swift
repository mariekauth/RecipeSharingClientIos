//
//  Recipe.swift
//  Recipe
//
//  Created by Leng Trang on 12/5/20.
//

import Foundation

struct Recipe: Decodable{
    let title: String?
    let description: String?
    let instruction: String?
    let ingredients: [String]?
}

struct RecipeBook: Decodable{
    let title: String?
    let user: String?
    let openToPublic: Bool
    let recipe:[Recipe]?
}
