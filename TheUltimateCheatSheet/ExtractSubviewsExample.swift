//
//  ExtractSubviewsExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 28/9/22.
//

import SwiftUI

struct ExtractSubviewsExample: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Orange", count: 1, color: .orange)
            MyItem(title: "Pear", count: 5, color: .green)
            MyItem(title: "Banana", count: 23, color: .yellow)
        }
    }
    
}

struct ExtractSubviewsExample_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsExample()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .frame(width: 100, height: 100)
        .background(color)
        .cornerRadius(20)
    }
}
