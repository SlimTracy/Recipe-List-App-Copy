//
//  Recipe.swift
//  Recipe List App
//
//  Created by Landon Tracy on 8/28/21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured: Bool
    var image:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
    
    
}
