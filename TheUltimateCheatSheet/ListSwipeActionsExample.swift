//
//  ListSwipeActionsExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct ListSwipeActionsExample: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach", "pear"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot", "broccoli"
    ]
    
    
    var body: some View {
        VStack {
            List {
                ForEach(fruits, id: \.self) {
                    Text($0.capitalized)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button("Archive") {
                                
                            }
                            .tint(.green)
                            Button("Save") {
                                
                            }
                            .tint(.blue)
                            Button("Delete") {
                                
                            }
                            .tint(.red)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button("Share") {
                                
                            }
                            .tint(.green)
                            Button("Like") {
                                
                            }
                            .tint(.blue)
                            Button("Junk") {
                                
                            }
                            .tint(.red)
                        }
                }
                .onDelete(perform: delete)
            }
            
            List {
                ForEach(veggies, id: \.self) { vege in
                    Text(vege.capitalized)
                }
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
    
}

struct ListSwipeActionsExample_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsExample()
    }
}
