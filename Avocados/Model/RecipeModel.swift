//
//  RecipeModel.swift
//  Avocados
//
//  Created by Paulo Orquillo on 28/04/21.
//

import SwiftUI

// MARK: Recipe Model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
