//
//  tourGuide.swift
//  00757128_hw2
//
//  Created by User09 on 2020/10/15.
//

import SwiftUI

struct tourGuide: View {
    var body: some View {
        NavigationView {
            List(tourAttractions, id: \.name) { (TourAttractionStruct) in
                NavigationLink(destination: tourDetail(detailOfTour : TourAttractionStruct)) {
                    Image(TourAttractionStruct.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 60)
                    .clipped()
                    Text(TourAttractionStruct.name)
                }
            }
            .navigationTitle("旅遊景點")
        }
    }
}

struct tourGuide_Previews: PreviewProvider {
    static var previews: some View {
        tourGuide()
    }
}
