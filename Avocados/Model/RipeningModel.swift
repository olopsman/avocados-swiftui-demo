//
//  RipeningModel.swift
//  Avocados
//
//  Created by Paulo Orquillo on 28/04/21.
//

import SwiftUI

// MARK: Ripening Model

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
    
}
