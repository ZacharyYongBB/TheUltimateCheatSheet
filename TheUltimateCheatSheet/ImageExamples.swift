//
//  ImageExamples.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 25/9/22.
//

import SwiftUI

struct ImageExamples: View {
    var body: some View {
        Image("Google")
                   //.renderingMode(.template)
                   .resizable()
                   //.aspectRatio(contentMode: .fit)
                   //.scaledToFit()
                   .scaledToFit()
                   .frame(width: 300, height: 200)
                   .foregroundColor(.green)
                   //.clipped()
                   //.cornerRadius(150)
                   //.clipShape(
                       //Circle()
                       //RoundedRectangle(cornerRadius: 25.0)
                       //Ellipse()
                   //    Circle()
                   //)
    }
}

struct ImageExamples_Previews: PreviewProvider {
    static var previews: some View {
        ImageExamples()
    }
}
