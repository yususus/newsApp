//
//  ContentView.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            Spacer()
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
