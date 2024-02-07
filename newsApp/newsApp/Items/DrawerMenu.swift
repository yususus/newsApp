//
//  DrawerMenu.swift
//  newsApp
//
//  Created by yusuf on 7.02.2024.
//

import SwiftUI

struct DrawerMenu: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Image("c3").resizable().aspectRatio(contentMode: .fit).frame(width: Const.width * 0.3, height: Const.height * 0.1).padding().padding(.top, 100)
            Text("Categories").font(.title2).fontWeight(.bold).padding()
            Button(action: {}, label: {
                Text("Sports").foregroundStyle(Color.black).fontWeight(.bold)
            }).padding()
            
            Button(action: {}, label: {
                Text("Economy").foregroundStyle(Color.black).fontWeight(.bold)
            }).padding()
            Button(action: {}, label: {
                Text("Science").foregroundStyle(Color.black).fontWeight(.bold)
            }).padding()
            Button(action: {}, label: {
                Text("Technology").foregroundStyle(Color.black).fontWeight(.bold)
            }).padding()
            Button(action: {}, label: {
                Text("Magazines").foregroundStyle(Color.black).fontWeight(.bold)
            }).padding()
            Spacer()
        }.frame(width: Const.width * 0.4, height: Const.height * 1 ,alignment: .topLeading).background(Color.gray)
    }
}

#Preview {
    DrawerMenu()
}
