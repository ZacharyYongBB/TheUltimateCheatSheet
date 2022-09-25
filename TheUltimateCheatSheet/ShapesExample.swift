//
//  ShapesExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 25/9/22.
//

import SwiftUI

struct ShapesExample: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 100)
            //.fill(Color.blue)
            //.foregroundColor(.blue)
            //.stroke(Color.red, lineWidth: 10)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [40]))
            //.trim(from:0.4, to: 1.0)
            .frame(width: 300, height: 200)
        
        
        
        
    }
}

struct ShapesExample_Previews: PreviewProvider {
    static var previews: some View {
        ShapesExample()
    }
}
