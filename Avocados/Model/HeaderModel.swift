//
//  HeaderModel.swift
//  Avocados
//
//  Created by Paulo Orquillo on 27/04/21.
//

import SwiftUI

// MARK: Header

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
