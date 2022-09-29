//
//  SheetsExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 29/9/22.
//

import SwiftUI

struct SheetsExample: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Show Sheet")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet, content:{
                // DO NOT ADD CONDITIONAL STATEMENTS HERE
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    
    //ways to dismiss sheet
    //https://scottm.medium.com/dismissing-swiftui-model-views-in-ios-15-and-macos-12-50ac174ec901
    
    //@Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                //presentationMode.wrappedValue.dismiss()
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            }
        }
    }
}


struct SheetsExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetsExample()
        //SecondScreen()
    }
}
