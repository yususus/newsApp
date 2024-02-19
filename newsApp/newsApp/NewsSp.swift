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
    @State var selectedCategory = "Spor"{
        didSet {
            list.fetchCategoryData(category: selectedCategory)
        }
    }
    @ObservedObject var list = getData(category: "Spor")
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
                            .navigationBarItems(leading: Image("Union").resizable().frame(width: Const.width * 0.08,height: Const.height * 0.03).frame(width:Const.width * 0.9, alignment: .leading).padding(.top, Const.height * 0.01)
                                .onTapGesture {
                                    showDrawer = true
                                })
                    }
                    DrawerMenu(isOpen: $showDrawer, selectedCategory: $selectedCategory)
                        .offset(x: showDrawer ? 0 : Const.width * 1)
            
        }
    }
}
#Preview {
    NewsSp()
}
