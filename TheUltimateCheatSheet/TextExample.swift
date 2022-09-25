//
//  TextExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 25/9/22.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text("Hello, world!".uppercased())
            //.font(.headline)
            //.fontWeight(.semibold)
            .underline(true, color: Color.pink)
            .italic()
            .strikethrough(true, color: Color.green)
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .baselineOffset(50)
            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.secondary)
            .frame(width: 400, height: 200, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextExample_Previews: PreviewProvider {
    static var previews: some View {
        TextExample()
    }
}
