//
//  ListPractice.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 29/9/22.
//

import SwiftUI

struct ListPractice: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach", "pear"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot", "broccoli"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                    }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding()
                            .cornerRadius(20)
                    }
                    .onDelete(perform: delete)
                    .onMove { IndexSet, Int in
                        move(IndexSet: IndexSet, Int: Int)
                    }
                    .listRowBackground(Color.blue)
                }
                
                Section(
                    header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                
            }
            .listStyle(DefaultListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(IndexSet: IndexSet) {
        fruits.remove(atOffsets: IndexSet)
    }
    
    func move(IndexSet: IndexSet, Int: Int) {
        fruits.move(fromOffsets: IndexSet, toOffset: Int)

    }
    
    func add() {
        fruits.append("coconut")
    }
    
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
