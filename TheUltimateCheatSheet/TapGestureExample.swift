//
//  TapGestureExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 5/10/22.
//

import SwiftUI

struct TapGestureExample: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height:200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()

        }
        .padding(40)
    }
}

struct TapGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureExample()
    }
}
