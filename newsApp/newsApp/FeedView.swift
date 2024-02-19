//
//  ContentView.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct FeedView: View {
    @State var showDrawer = false
    @State var selectedCategory = "Teknoloji"
    var body: some View {
        ZStack {
            VStack {
                Image("Union").resizable().frame(width: Const.width * 0.08,height: Const.height * 0.03).frame(width:Const.width * 0.9, alignment: .leading).padding(.top, Const.height * 0.05)
                    .onTapGesture {
                        showDrawer = true
                    }
                
                ScrollView{
                    newsss(text: "Teknoloji")
                    newsss(text: "Spor")
                    newsss(text: "Bilim")
                    newsss(text: "Ekonomi")
                }.frame(width: Const.width * 0.95)
            }
            DrawerMenu(isOpen: $showDrawer, selectedCategory: $selectedCategory)
                .offset(x: showDrawer ? 0 : Const.width * 1)
            
        }
    }
}

struct newsss: View {
    var text : String
    
    @State private var showSmallViews = false
    
    var body: some View {
        Text(text).font(.title).fontWeight(.bold).frame(width: Const.width * 0.95, alignment: .leading)
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(0..<10) { index in
                    small(title: "haber baş", desc: "içerik kısmı", images: "c3")
                }
            }.onAppear(perform: {
                withAnimation {
                    showSmallViews = true
                }
            })
        }
        
    }
}


#Preview {
    FeedView()
}
