//
//  ProfileView.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    //app storate
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("\(currentUserAge ?? 0) Years Old")
            Text("\(currentUserGender ?? "unknown")")
            
            Text("Sign Out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.primary)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
            
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .padding(.horizontal, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
