//
//  DataService.swift
//  Recipe List App
//
//  Created by Landon Tracy on 8/29/21.
//

import Foundation

class DataService {
    
    func getLocalData() -> [Recipe] {
        
        // parse local json file
        
        // get the url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // check if pathstring is nil otherwise...
        guard pathString != nil else {
            return [Recipe]()
            
        }
        
        
        // create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // create a data object
            let data = try Data(contentsOf: url)
            
            // decode the data with a dson decoder
            let decoder = JSONDecoder()
            
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // add the unique ids
                for r in recipeData {
                    r.id = UUID()
                    
                }
                
                // return the recipe
                return recipeData
                
            }
            catch {
                // error with parsing json
                print(error)
            }
            
      
        }
        catch {
            // error with getting data
            print(error)
        }
        return [Recipe]()
        
    } // end of function
    
}
