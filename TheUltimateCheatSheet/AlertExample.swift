//
//  AlertExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 30/9/22.
//

import SwiftUI

struct AlertExample: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("button 1") {
                    alertType = .error
                    //alertTitle = "Error uploading video"
                    //alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("button 2") {
                    alertType = .success
                    //alertTitle = "Successfully uploaded video😇"
                    //alertMessage = "You video is now ready!"
                    showAlert.toggle()
                }
            }
            .alert (isPresented: $showAlert) {
               getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("there was an error"))
        case .success:
            return Alert(title: Text("this was a success!"), message: nil, dismissButton: .destructive(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
        
//        Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("ok")))
        
        //return
        //Alert(title: Text("There was an error!"))
//        Alert(
//            title: Text("This is the Title"),
//            message: Text("here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

struct AlertExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
