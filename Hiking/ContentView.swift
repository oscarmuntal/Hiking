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
        NavigationView {
            List(hikes, id: \.name) { hike in
                NavigationLink(destination: Text("Hiking Selected")) {
                    HikeCell(hike: hike)
                }
            }
            .navigationBarTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f miles", hike.miles))
            }
        }
    }
}
