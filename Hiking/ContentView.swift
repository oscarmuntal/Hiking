//
//  ContentView.swift
//  Hiking
//
//  Created by Òscar Muntal on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    
    var body: some View {
        List(hikes, id: \.name) { hike in
            HStack {
                Image(hike.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(16)
                Text(hike.name)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
