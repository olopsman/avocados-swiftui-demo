//
//  AppView.swift
//  Avocados
//
//  Created by Paulo Orquillo on 26/04/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            ContentView()
                .tabItem( {
                    Image("tabicon-book")
                    Text("Recipes")
                } )
            RipeningStateView()
                .tabItem ( {
                    Image("tabicon-avocado")
                    Text("Ripening")
                } )
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        }.accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
