//
//  small.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct small: View {
    var title : String
    var desc: String
    var images : String
    var body: some View {
        VStack{
            Image(images).resizable().scaledToFit().frame(width: Const.width * 0.4)
            Text(title).font(.title3).fontWeight(.bold).frame(width: Const.width * 0.45,height: Const.height * 0.025,alignment: .leading)
            Text(desc).frame(width: Const.width * 0.45,height: Const.height * 0.05,alignment: .leading)
        }.frame(width: Const.width * 0.5, height: Const.height * 0.25).background(Color.secondary).cornerRadius(10)
        
    }
}

#Preview {
    small(title: "Haber Başlığı", desc: "Haber içeriği dasdla mdskaldsa mdkslaad...", images: "c3")
}
