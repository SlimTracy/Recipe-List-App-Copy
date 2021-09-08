//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Landon Tracy on 8/29/21.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // create an instance of data service and get the data
        let service = DataService()
        self.recipes = service.getLocalData()
        
    }
    
    
}
