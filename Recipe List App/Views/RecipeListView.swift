//
//  ContentView.swift
//  Recipe List App
//
//  Created by Landon Tracy on 8/28/21.
//

import SwiftUI

struct RecipeListView: View {
    
    // reference the view model
   @ObservedObject var model = RecipeModel()
    
    
    
    var body: some View {
        
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe:r),
                    label: {
                        
                        // MARK: Row item
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })

            }
            .navigationBarTitle("All Recipes")
            
        }
        
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
 
