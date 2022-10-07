//
//  BadgesExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

// List
// Tabview

struct BadgesExample: View {
    var body: some View {
        VStack {
            
            List {
                Text("Hello world")
                    .badge("New")
                Text("Hello world")
                    .badge(3)
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            
            TabView {
                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge("New")
                
                Color.blue
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(4)
                
                Color.green
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(8)
            }
        }
    }
}

struct BadgesExample_Previews: PreviewProvider {
    static var previews: some View {
        BadgesExample()
    }
}
