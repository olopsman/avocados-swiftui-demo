//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Paulo Orquillo on 28/04/21.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: Properties
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                //Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
            }
            Group {
                //title
                Text(recipe.title)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(.top, 10)
                //rating
                RecipeRatingView(recipe: recipe)
                //cooking
                RecipeCookingView(recipe: recipe)
                //ingredients
                Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .leading, spacing: 5, content: {
                    ForEach(recipe.ingredients, id: \.self){item in
                        VStack(alignment: .leading, spacing: 5, content: {
                            Text(item)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Divider()
                        })
                    }
                })
                //instructions
                Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ForEach(recipe.instructions, id: \.self){item in
                    VStack(alignment: .center, spacing: 5, content: {
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .frame(width: 42, height: 42, alignment: .center)
                            .imageScale(.large)
                            .font(Font.title.weight(.ultraLight))
                            .foregroundColor(Color("ColorGreenAdaptive"))
                        Text(item)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .font(.system(.body, design: .serif))
                            .frame(height: 100)
                        
                    })
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            
            
        }.edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {}, label: {
                    Image(systemName: "chevron.down.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .shadow(radius: 4)
                        .opacity(self.pulsate ? 1 : 0.6)
                        .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                        .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            })
        .onAppear(){
            self.pulsate.toggle()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
