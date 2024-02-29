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
                WebImage(url: URL(string: images)!,options: .highPriority, context: nil).resizable().frame(width: Const.width * 0.9, height: Const.height * 0.3)
            }
            /*Image(images).resizable().scaledToFit().frame(width: Const.width * 0.8, height: Const.height * 0.2)*/
            Spacer()
            Text(title).font(.custom("Baloo2", size: 22)).fontWeight(.bold).frame(width: Const.width * 0.8,height: Const.height * 0.05,alignment: .leading).foregroundColor(.black)
            Text(descrip).font(.custom("Baloo2", size: 16)).frame(width: Const.width * 0.8, height: Const.height * 0.05,alignment: .leading).foregroundColor(.black)
            Spacer()
        }.frame(width: Const.width * 0.9, height: Const.height * 0.45).background(Color.cyan.blur(radius: 10).opacity(0.9)).cornerRadius(10).shadow(radius: 10)
    }
}

#Preview {
    bigNews(title: "Bu haber baya önemli bir haber dasdada", descrip: "Bu haber alt metni çok öenmsiz bir haberin alt metni olabilir boşverin çok fazla okumayın", images: "c3")
}
