//
//  NewsSp.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsSp: View {
    @StateObject var getData = GetData()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack{
                        NewsButton(news: "Popular")
                        NewsButton(news: "World")
                        NewsButton(news: "Science")
                        NewsButton(news: "Magazines")
                        NewsButton(news: "Sports")
                        NewsButton(news: "Life")
                        NewsButton(news: "Technology")
                    }
                }.frame(height: Const.height * 0.06).background(Color.brown.blur(radius: 50).opacity(0.4))
                
                ScrollView(.vertical) {
                    ForEach(getData.datas, id: \.self) { item in
                        NavigationLink(destination: webView(url: item.url)
                            .navigationBarTitle("", displayMode: .inline)) {
                                bigNews(title: item.title, descrip: item.desc, images: item.image)
                                    .padding()
                            }
                    }
                }.frame(width: Const.width).background(Color.brown.blur(radius: 50).opacity(0.4))
            }
        }
    }
    @ViewBuilder
    func NewsButton(news: String)->  some View {
        
        Button(action: {
            getData.fetchCategoryData(for: news)
        }) {
            Text("\(news) News").foregroundColor(Color.black)
        }.buttonStyle(PressedButtonStyle(isPressed: true)).padding(.leading,5)
    }
}

#Preview {
    NewsSp()
}
