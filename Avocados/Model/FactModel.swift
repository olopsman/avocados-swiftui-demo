//
//  FactModel.swift
//  Avocados
//
//  Created by Paulo Orquillo on 27/04/21.
//

import SwiftUI

// MARK: Fact Model

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
