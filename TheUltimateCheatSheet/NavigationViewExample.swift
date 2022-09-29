//
//  NavigationViewExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 29/9/22.
//

import SwiftUI

struct NavigationViewExample: View {
    
    var title : String = "Inbox"
    
    var body: some View {
        NavigationView {
            ScrollView{
                
                NavigationLink("Next Screen", destination: OtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle(title)
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
        }
    }
}

struct OtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            Text("Second Screen")
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(width: 300, height: 300, alignment: .top)
            
            VStack {
                Button("Back") {
                    dismiss()
                }
                .padding()
                
                NavigationLink("Next Next Screen", destination: Text("3rd Screen"))
                    .padding()
            }
        }
        .navigationTitle("Green Screen")
        //.navigationBarHidden(true)
        .navigationBarItems(
            
            leading:
                HStack{
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                        .font(.largeTitle)
                }
            
            ,
            trailing: NavigationLink(destination: NavigationViewExample(), label: {
                Image(systemName: "gear")
            })
            .tint(.red)
            
        )
    }
}

struct NavigationViewExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExample()
    }
}
