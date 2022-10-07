//
//  TabViewExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 3/10/22.
//

import SwiftUI

struct TabViewExample: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(icons, id: \.self) { icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .padding(30)
                }

            }
            .background(
                RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
            )
            .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
            
            
                    TabView (selection: $selectedTab) {
            
                        HomeView(selectedTab: $selectedTab)
                            .tabItem {
                                Image(systemName: "house.fill")
                                Text("Home")
                            }
                            .tag(0)
            
            
                        Text("Browse Tab")
                            .tabItem {
                                Image(systemName: "globe")
                                Text("Browse")
                            }
                            .tag(1)
            
            
                        Text("Profile Tab")
                            .tabItem {
                                Image(systemName: "person.fill")
                                Text("Profile")
                            }
                            .tag(2)
                    }
                    .accentColor(.red)
            
        }
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            
            VStack {
                
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
