//
//  homePage.swift
//  00757128_hw2
//
//  Created by User09 on 2020/10/15.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        List{
            Section(header: Text("精選")){
                ScrollView(.horizontal){
                    HStack{
                        ForEach(1..<10){ (item) in
                            Image(String(item))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                                .clipShape(Circle())
                        }
                    }
                }
            }
            Section(header: Text("簡介")){
                VStack{
                    Text("想在忙碌的生活中來點放鬆的輕旅行嗎？").padding()
                    selectedImg(name: "intro-3")
                    Text("那基隆絕對是你最好的選擇之一！不管是美食美景，這裡都能讓你放下一切，好好的旅行！")
                        .padding()
                    selectedImg(name: "intro-2")
                    TextEditor(text: .constant("基隆港全台聞名，港區範圍直入市中心區，是港灣城市中少見的特例。基隆目前共有七個行政區域，另有七個附屬島嶼，分別為和平島、中山仔嶼、桶盤嶼、基隆嶼、彭佳嶼、棉花嶼及花瓶嶼，其中和平島(舊社寮島)、中山仔嶼、桶盤嶼三島今已連為一體，即今日所稱和平島，各區域和島嶼依隨山、海、河、港而有不同的景致與遊賞路線。"))
                        .padding()
                    selectedImg(name: "intro-1")
                    Text("好玩的") +
                        Text("基隆").font(.title).foregroundColor(.pink) +
                    Text("等著你來") +
                    Text("發現")
                    .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.blue).italic()
                    Divider();
                    Link("基隆市政府連結", destination: URL(string: "https://www.klcg.gov.tw/")!).padding()
                }
            }
        }
    }
}
struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}

struct selectedImg: View {
    let name : String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 150)
            .clipped()
    }
}
