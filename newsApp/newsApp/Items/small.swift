//
//  small.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct small: View {
    var body: some View {
        VStack{
            Image("c3").resizable().scaledToFit().frame(width: Const.width * 0.4)
            Text("Haber Başlığı").font(.title3).fontWeight(.bold).frame(width: Const.width * 0.45,alignment: .leading)
            Text("Haber içeriği dasdla mdskaldsa mdkslaad...")
        }.frame(width: Const.width * 0.5, height: Const.height * 0.25).background(Color.secondary).cornerRadius(10)
        
    }
}

#Preview {
    small()
}
