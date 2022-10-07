//
//  SubmitTextFieldExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct SubmitTextFieldExample: View {
    
    @State private var textfieldText: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $textfieldText)
            .submitLabel(.next)
            .onSubmit {
                print("send something to the console")
            }
    }
}

struct SubmitTextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldExample()
    }
}
