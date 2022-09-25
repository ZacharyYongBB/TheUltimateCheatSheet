//
//  StacksExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 25/9/22.
//

import SwiftUI

struct StacksExample: View {
    // Vstacks -> Vertical
       // Hstacks -> Horizontal
       // Zstacks -> zIndex (back to front)
       var body: some View {
           VStack(spacing: 50) {
               
               ZStack {
                   Circle()
                       .frame(width: 100, height: 100)
                   
                   Text("1")
                       .font(.title)
                       .foregroundColor(.white)
               }
               
               Text("1")
                   .font(.title)
                   .foregroundColor(.white)
                   .background(
                       Circle()
                           .frame(width: 100, height: 100)
                   )
               
           }
       }
   }

struct StacksExample_Previews: PreviewProvider {
    static var previews: some View {
        StacksExample()
    }
}
