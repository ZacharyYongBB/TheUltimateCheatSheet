//
//  ExtractedVar&Func.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 28/9/22.
//

import SwiftUI

struct ExtractedVar_FuncExample: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedVar_FuncExample_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedVar_FuncExample()
    }
}
