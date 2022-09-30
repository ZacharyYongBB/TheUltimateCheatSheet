//
//  PickerExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 30/9/22.
//

import SwiftUI

struct PickerExample: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
//        Picker(
//            selection: $selection,
//            label: Text("Picker"),
//            content: {
//                ForEach(filterOptions.indices) { index in
//                    Text(filterOptions[index])
//                        .tag(filterOptions[index])
//                }
//            })
//        .pickerStyle(.segmented)
        
        
        Picker(
            selection: $selection,
            label:
                HStack {
                    Text("Filter:")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)

            ,
            content: {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                            .tag(option)
                    }
                }
            })
        
//        VStack {
//            
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//            })
//            .background(Color.gray.opacity(0.3))
//            .cornerRadius(15)
//            .pickerStyle(.wheel)
//        }
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
