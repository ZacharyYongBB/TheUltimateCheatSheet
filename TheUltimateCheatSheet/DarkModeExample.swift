//
//  DarkModeExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 3/10/22.
//

import SwiftUI

struct DarkModeExample: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? . green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Example")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct DarkModeExample_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeExample()
    }
}
