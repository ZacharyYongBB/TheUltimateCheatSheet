//
//  FocusStateExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct FocusStateExample: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    //@FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    //@FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack (spacing: 30) {
            TextField("Whats your name?", text: $username)
                .focused($fieldInFocus, equals: .username)
                //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Password?", text: $password)
                .focused($fieldInFocus, equals: .password)
                //.focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign Up 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign Up")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//            Button("Toggle Focus State") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateExample_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateExample()
    }
}
