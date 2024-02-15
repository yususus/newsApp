//
//  bigNews.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct bigNews: View {
    var title : String
    var descrip: String
    var images: String
    var body: some View {
        VStack{
            Image(images).resizable().scaledToFit().frame(width: Const.width * 0.7, height: Const.height * 0.2)
            Text(title).font(.title3).fontWeight(.bold).frame(width: Const.width * 0.7,height: Const.height * 0.033,alignment: .leading)
            Text(descrip).frame(width: Const.width * 0.7, height: Const.height * 0.05,alignment: .leading)
        }.frame(width: Const.width * 0.9, height: Const.height * 0.35).background(Color.secondary).cornerRadius(10)
    }
}

#Preview {
    bigNews(title: "a", descrip: "b", images: "c3")
}
