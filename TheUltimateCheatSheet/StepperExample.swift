//
//  StepperExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 30/9/22.
//

import SwiftUI

struct StepperExample: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            // Stepper +/- 1
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            // Stepper customized func
            Stepper("Stepper2") {
                // increment
                incrementWidth(amount: 10)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -10)
            }
            .padding(50)

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
    
}

struct StepperExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample()
    }
}
