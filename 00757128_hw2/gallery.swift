//
//  gallery.swift
//  00757128_hw2
//
//  Created by User09 on 2020/10/15.
//

import SwiftUI

struct gallery: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                let columns = [
                    GridItem(),
                    GridItem()
                ]
                LazyVGrid(columns: columns) {
                    ForEach(gallerys.indices) { (index) in
                        VStack {
                            Image(gallerys[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 160, height: 120)
                                .clipped()
                        }
                    }
                }
            }
            .navigationTitle("精選照片")
        }
    }
}

struct gallery_Previews: PreviewProvider {
    static var previews: some View {
        gallery()
    }
}
