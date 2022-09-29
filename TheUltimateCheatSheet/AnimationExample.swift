//
//  AnimationExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 29/9/22.
//

import SwiftUI

struct AnimationExample: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatCount(3)
                ){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300  : 0)
            
            Spacer()
        }
    }
}

struct AnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExample()
    }
}
