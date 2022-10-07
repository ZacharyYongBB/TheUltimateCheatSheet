//
//  AppStorageExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct AppStorageExample: View {
    
    @AppStorage("name") var currentUserName : String?
    
    var body: some View {
        VStack (spacing:20) {
            Text(currentUserName ?? "User")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save") {
                let name = "Betty"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear() {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageExample_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageExample()
    }
}
