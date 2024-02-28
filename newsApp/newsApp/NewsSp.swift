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
        VStack {
            ScrollView(.horizontal) {
                HStack{
                    NewsButton(news: "Science")
                    NewsButton(news: "Magazines")
                    NewsButton(news: "Sports")
                    NewsButton(news: "Technology")
                    
                    Button(action: {
                        getData.fetchCategoryData(for: "technology")
                    }) {
                        Text("Tech News")
                    }.padding()
                }
            }.frame(height: Const.height * 0.06)
            
            
            
            
            NavigationView {
                List(getData.datas, id: \.self) { item in
                    NavigationLink(destination: webView(url: item.url)
                        .navigationBarTitle("", displayMode: .inline)) {
                            HStack {
                                bigNews(title: item.title, descrip: item.desc, images: item.image)
                            }
                            .padding(.vertical, 15)
                        }
                }
            }
        }
    }
}

#Preview {
    NewsSp()
}
