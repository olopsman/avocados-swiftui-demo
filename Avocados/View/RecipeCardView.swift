//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Paulo Orquillo on 28/04/21.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: Properties
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Card Images
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            VStack(alignment: .leading, spacing: 12, content: {
                //title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                //headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                //rates
                RecipeRatingView(recipe: recipe)
                //cooking
                RecipeCookingView(recipe: recipe) 
            })
            .padding()
            .padding(.bottom, 12)

        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
