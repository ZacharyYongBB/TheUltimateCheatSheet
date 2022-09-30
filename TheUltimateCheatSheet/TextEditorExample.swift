//
//  TextEditorExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 30/9/22.
//

import SwiftUI

struct TextEditorExample: View {
    
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                    textEditorText = ""
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                
                Spacer()

            }
            .padding()
            .background(Color.green)
            .navigationTitle("Text Editor Example")
        }
    }
}

struct TextEditorExample_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorExample()
    }
}
