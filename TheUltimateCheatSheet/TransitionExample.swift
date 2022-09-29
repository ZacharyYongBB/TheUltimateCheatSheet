//
//  TransitionExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 29/9/22.
//

import SwiftUI

struct TransitionExample: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height/2)
                    //.transition(.move(edge: .bottom))
                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: AnyTransition.opacity.animation(.easeInOut)))
//                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionExample_Previews: PreviewProvider {
    static var previews: some View {
        TransitionExample()
    }
}
