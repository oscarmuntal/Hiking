//
//  HikeDetail.swift
//  Hiking
//
//  Created by Òscar Muntal on 2/4/23.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
            Text(String(format: "%.2f miles", hike.miles))
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageURL: "tam", miles: 10.0))
    }
}
