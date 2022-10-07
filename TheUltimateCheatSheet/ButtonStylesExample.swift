//
//  ButtonStylesExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct ButtonStylesExample: View {
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.capsule)

            
            Button("Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.regular)

            Button("Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)

            Button("Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            Button("Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)


            
        }
    }
}

struct ButtonStylesExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesExample()
    }
}
