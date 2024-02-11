//
//  NewsSp.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct NewsSp: View {
    @State var showDrawer = false
    @State var selectedCategory = "Teknoloji"
    var body: some View {
        ZStack {
            VStack {
                Image("Union").resizable().frame(width: Const.width * 0.08,height: Const.height * 0.03).frame(width:Const.width * 0.9, alignment: .leading).padding(.top, Const.height * 0.05)
                    .onTapGesture {
                        showDrawer = true
                    }
                Text(selectedCategory).font(.title).fontWeight(.bold).frame(width: Const.width * 0.9, alignment: .topLeading)
                ScrollView {
                    VStack {
                        ForEach(0..<10) { index in
                            bigNews()
                        }
                        
                    }
                }.frame(width: Const.width * 0.9)
            }
            DrawerMenu(isOpen: $showDrawer, selectedCategory: $selectedCategory)
                .offset(x: showDrawer ? 0 : Const.width * 1)
        }
        
    }
}

#Preview {
    NewsSp()
}
