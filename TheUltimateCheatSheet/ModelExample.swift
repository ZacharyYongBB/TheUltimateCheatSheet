//
//  ModelExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 5/10/22.
//

import SwiftUI

struct userModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelExample: View {
                            
    @State var users: [userModel] = [
        //"Zachary", "Amanda", "Betty", "Carl"
        userModel(displayName: "Zachary", userName: "zach123", followerCount: 10000000, isVerified: true),
        userModel(displayName: "Betty", userName: "bet", followerCount: 392, isVerified: false),
        userModel(displayName: "Carl", userName: "carlie", followerCount: 12312, isVerified: false),
        userModel(displayName: "Dolla", userName: "holla", followerCount: 1293, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 10.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack (alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                        }
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        Spacer()
                        
                        
                        
                        VStack {
                            Text ("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.secondary)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct ModelExample_Previews: PreviewProvider {
    static var previews: some View {
        ModelExample()
    }
}
