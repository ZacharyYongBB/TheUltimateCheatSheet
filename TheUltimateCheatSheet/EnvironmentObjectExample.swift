//
//  EnvironmentObjectExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 5/10/22.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
    
}

struct EnvironmentObjectExample: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
                .navigationTitle("IOS Devices")
            }
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            //background
            LinearGradient(colors: [Color.blue, Color.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                    
                    Button("Back") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(.red)
                    .font(.headline)
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectExample()
    }
}
