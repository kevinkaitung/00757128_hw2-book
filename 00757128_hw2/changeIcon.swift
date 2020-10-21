//
//  changeIcon.swift
//  00757128_hw2
//
//  Created by User11 on 2020/10/19.
//

import SwiftUI

struct changeIcon: View {
    var body: some View {
        VStack{
            Text("更換App Icon吧！")
            HStack {
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                }) {
                    Image("appIconOrg")
                        .resizable()
                        .scaledToFit()
                }
                Button(action: {
                    UIApplication.shared.setAlternateIconName("anotherIcon")
                }) {
                    Image("anotherSample")
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(height: 50)
        }
    }
}

struct changeIcon_Previews: PreviewProvider {
    static var previews: some View {
        changeIcon()
    }
}
