//
//  IfLetGuardExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 5/10/22.
//

import SwiftUI

struct IfLetGuardExample: View {
    
    @State var currentUserID: String? = "testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // Do not user ! ever.
                // Do not force unwrap values.
                // Chances are if let / guard needs to be used
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading == true {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear() {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User Id is : \(userID)"
                isLoading = false
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                displayText = "Error. There is no user ID"
            }
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "Error. There is no user ID"
            }
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User Id is : \(userID)"
            isLoading = false
        }
    }
    
}

struct IfLetGuardExample_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardExample()
    }
}
