//
//  tourDetail.swift
//  00757128_hw2
//
//  Created by User09 on 2020/10/15.
//

import SwiftUI

struct tourDetail: View {
    let detailOfTour : TourAttractionStruct
    @State private var show = false
    var body: some View {
        VStack {
            if show {
                detailOfTourImage(detailOfTourImg: detailOfTour)
                    .transition(.scale)
            }
            Text(detailOfTour.info)
                .padding()
        }
        .animation(.easeInOut(duration: 1.5))
        .onAppear {
            self.show = true
        }
        .navigationTitle(detailOfTour.name)
    }
}

struct tourDetail_Previews: PreviewProvider {
    static var previews: some View {
        tourDetail(detailOfTour: tourAttractions[0])
    }
}

struct detailOfTourImage: View {
    let detailOfTourImg: TourAttractionStruct
    var body: some View {
        Image(detailOfTourImg.name)
            .resizable()
            .scaledToFill()
            .frame(width: 260, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipped()
    }
}
