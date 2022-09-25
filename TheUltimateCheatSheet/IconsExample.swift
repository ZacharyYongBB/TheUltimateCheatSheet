//
//  IconsExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 25/9/22.
//

import SwiftUI

struct IconsExample: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    //.resizable()
                    //.aspectRatio(contentMode: .fit)
                    //.scaledToFit()
                    //.scaledToFill()
                    //.font(.caption)
                    //.font(.system(size: 200))
                    //.foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    //.frame(width: 300, height: 300)
                    //.clipped()
    }
}

struct IconsExample_Previews: PreviewProvider {
    static var previews: some View {
        IconsExample()
    }
}
