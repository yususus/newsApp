//
//  NewsSp.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsSp: View {
    @State var showDrawer = false
    @State var selectedCategory = "Teknoloji"
    @ObservedObject var list = getData()
    var body: some View {
            ZStack {
                NavigationView{
                    List(list.datas){i in
                        NavigationLink(destination: webView(url: i.url)
                            .navigationBarTitle("", displayMode: .inline)) {
                            HStack(){
                                bigNews(title: i.title, descrip: i.desc, images: i.image)

                            }.padding(.vertical, 15)
                        }
                        
                    }.navigationBarTitle(selectedCategory)
                }
                DrawerMenu(isOpen: $showDrawer, selectedCategory: $selectedCategory)
                    .offset(x: showDrawer ? 0 : Const.width * 1)
            }
    }
}
#Preview {
    NewsSp()
}
