//
//  BackgroundMaterialsExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct BackgroundMaterialsExample: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("Google")
        )
    }
}

struct BackgroundMaterialsExample_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsExample()
    }
}
