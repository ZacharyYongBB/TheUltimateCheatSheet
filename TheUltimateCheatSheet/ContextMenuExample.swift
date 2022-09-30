//
//  ContextMenuExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 30/9/22.
//

import SwiftUI

struct ContextMenuExample: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Zachary")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(Color.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .red
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }


        }
    }
}

struct ContextMenuExample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuExample()
    }
}
