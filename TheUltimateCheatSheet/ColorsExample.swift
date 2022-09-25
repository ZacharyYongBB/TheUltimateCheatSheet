//
//  ColorsExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 25/9/22.
//

import SwiftUI

struct ColorsExample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
                //Color(#colorLiteral(red:0.5, green:0.0566209841, blue: 0.5732337811, alpha: 1))
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 100)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: -20, y: -20)
    }
}

struct ColorsExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorsExample()
    }
}
