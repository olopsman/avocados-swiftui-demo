//
//  SettingsView.swift
//  Avocados
//
//  Created by Paulo Orquillo on 26/04/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK : Properties
    
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = true
    var body: some View {
        VStack(alignment:.center, spacing: 0) {
            // MARK: - header
            VStack(alignment: .center, spacing: 0) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 8, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }.padding()
            
            Form {
                // MARK: Section #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable Notifications")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                // MARK: Section #2
                Section(header: Text("Application")){
                    HStack{
                        Text("Product").foregroundColor(Color.gray)
                        Spacer()
                        Text("Avocado Recipes")
                    }
                    HStack{
                        Text("Compatibility").foregroundColor(Color.gray)
                        Spacer()
                        Text("iPhone & iPad")
                    }
                    HStack{
                        Text("Developer").foregroundColor(Color.gray)
                        Spacer()
                        Text("Paulo")
                    }
                    HStack{
                        Text("Website").foregroundColor(Color.gray)
                        Spacer()
                        Text("Quonsepto")
                    }                    
                    
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
