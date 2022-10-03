//
//  OnAppearExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 3/10/22.
//

import SwiftUI

struct OnAppearExample: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear() {
                                count += 1
                            }
                    }
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text"
                }
            }
            .onDisappear() {
                myText = "Ending Text."
            }
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearExample_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearExample()
    }
}
