//
//  DocumentationExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 3/10/22.
//

import SwiftUI

struct DocumentationExample: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
    "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Working copy - things to do
    // 1) Fix title
    // 2) Fix smth else
    
    /*
     EVERYTHING HERE IS COMMENT
     */
    
    //option cmd <- to fold codes
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                                            showAlert.toggle()
                                        })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        } // END: NAV
    }
    
    /// this is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        // foreground
        ScrollView { // START : SCROLL
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLL
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
}

// MARK: PREVIEW

struct DocumentationExample_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationExample()
    }
}
