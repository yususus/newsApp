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
                        HStack(){
                            VStack(alignment: .leading,spacing: 10 ) {
                                if i.image != ""{
                                    WebImage(url: URL(string: i.image)!,options: .highPriority, context: nil).resizable().frame(width: Const.width * 0.8, height: Const.height * 0.2)
                                }
                                Text(i.title).font(.title3).fontWeight(.bold).frame(width: Const.width * 0.8,height: Const.height * 0.05,alignment: .leading)
                                Text(i.desc).frame(width: Const.width * 0.7, height: Const.height * 0.05,alignment: .leading)
          
                            }.frame(width: Const.width * 0.9, height: Const.height * 0.35).background(Color.secondary).cornerRadius(10)
                            
                           
                        }.padding(.vertical, 15)
                        
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
