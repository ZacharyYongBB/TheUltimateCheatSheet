//
//  AsyncImageExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 7/10/22.
//

import SwiftUI

struct AsyncImageExample: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack (spacing: 40) {
            AsyncImage(url: url, content: { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
            }, placeholder: {
                ProgressView()
        })
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .cornerRadius(20)
                case .failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)

                }
            }
        }
    }
}

struct AsyncImageExample_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageExample()
    }
}
