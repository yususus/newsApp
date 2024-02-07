//
//  ContentView.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct FeedView: View {
    @State var show = false
    var body: some View {
        VStack {
            Spacer()
            Button{
                show.toggle()
            } label: {
                Image("Union").resizable().frame(width: Const.width * 0.08,height: Const.height * 0.03).frame(width:Const.width * 0.9, alignment: .leading)
            }
            
            Text("News").font(.title).fontWeight(.bold).frame(width: Const.width * 0.85, alignment: .leading)
            ScrollView{
                Text("Teknoloji").font(.title).fontWeight(.bold)
                
                ScrollView(.horizontal){
                    HStack{
                        small()
                        small()
                        small()
                    }
                }
                    
                
                Text("Spor").font(.title).fontWeight(.bold)
                ScrollView(.horizontal){
                    HStack{
                        small()
                        small()
                        small()
                    }
                }
                Text("Bilim").font(.title).fontWeight(.bold)
                ScrollView(.horizontal){
                    HStack{
                        small()
                        small()
                        small()
                    }
                }
                Text("Ekonomi").font(.title).fontWeight(.bold)
                ScrollView(.horizontal){
                    HStack{
                        small()
                        small()
                        small()
                    }
                }
            }.frame(width: Const.width * 0.9)
        }
    }
}

#Preview {
    FeedView()
}
