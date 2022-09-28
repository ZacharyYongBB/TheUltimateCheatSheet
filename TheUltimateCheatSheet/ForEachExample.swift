//
//  ForEachExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 28/9/22.
//

import SwiftUI

import SwiftUI

struct ForEachExample: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<5) { index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

struct ForEachExample_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExample()
    }
}
