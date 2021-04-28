//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Paulo Orquillo on 28/04/21.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: Properties
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12, content: {
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }).font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
