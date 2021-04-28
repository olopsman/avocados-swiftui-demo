//
//  RipeningStateView.swift
//  Avocados
//
//  Created by Paulo Orquillo on 28/04/21.
//

import SwiftUI

struct RipeningStateView: View {
    // MARK: Ripening Stages
    
    var ripeningStages: [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct RipeningStateView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStateView()
    }
}
