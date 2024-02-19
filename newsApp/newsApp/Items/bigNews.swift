//
//  bigNews.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct bigNews: View {
    var title : String
    var descrip: String
    var images: String
    var body: some View {
        VStack{
            if images != ""{
                WebImage(url: URL(string: images)!,options: .highPriority, context: nil).resizable().frame(width: Const.width * 0.8, height: Const.height * 0.2)
            }
            /*Image(images).resizable().scaledToFit().frame(width: Const.width * 0.8, height: Const.height * 0.2)*/
            Text(title).font(.title3).fontWeight(.bold).frame(width: Const.width * 0.7,height: Const.height * 0.033,alignment: .leading)
            Text(descrip).frame(width: Const.width * 0.7, height: Const.height * 0.05,alignment: .leading)
        }.frame(width: Const.width * 0.9, height: Const.height * 0.35).background(Color.secondary).cornerRadius(10)
    }
}

#Preview {
    bigNews(title: "a", descrip: "b", images: "c3")
}
