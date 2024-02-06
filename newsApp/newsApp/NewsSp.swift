//
//  NewsSp.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct NewsSp: View {
    var body: some View {
        Text("Teknoloji").font(.title).fontWeight(.bold).frame(width: Const.width * 0.9, alignment: .topLeading)
        ScrollView {
            VStack {
                bigNews()
                bigNews()
                bigNews()
                bigNews()
                bigNews()
                bigNews()
            }
        }.frame(width: Const.width * 0.9)
    }
}

#Preview {
    NewsSp()
}
