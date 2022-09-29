//
//  ConditionalExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 29/9/22.
//

import SwiftUI

struct ConditionalExample: View {
    
    @State var showCircle: Bool = false
    @State var showRectange: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectange.description)") {
//                showRectange.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectange {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(10)
//            }
//            if showCircle || !showRectange {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

struct ConditionalExample_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalExample()
    }
}
