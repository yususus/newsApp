//
//  bigNews.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct bigNews: View {
    var body: some View {
        VStack{
            Image("c3").resizable().scaledToFit().frame(width: Const.width * 0.7, height: Const.height * 0.2)
            Text("Haber Başlığı").font(.title3).fontWeight(.bold).frame(width: Const.width * 0.7,height: Const.height * 0.033,alignment: .leading)
            Text("Haber içeriği dasdla mdskaldsa mdkslaad daksdmak mdsada mlk nllnl").frame(width: Const.width * 0.7, height: Const.height * 0.05,alignment: .leading)
        }.frame(width: Const.width * 0.9, height: Const.height * 0.35).background(Color.secondary).cornerRadius(10)
    }
}

#Preview {
    bigNews()
}
