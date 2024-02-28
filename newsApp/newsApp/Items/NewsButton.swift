//
//  NewsButton.swift
//  newsApp
//
//  Created by yusuf on 28.02.2024.
//

import SwiftUI

struct NewsButton: View {
    @StateObject var getData = GetData()
    @State var news: String
    //var action: () -> Void
    var body: some View {
        Button(action: {
            getData.fetchCategoryData(for: news)
        }) {
            Text("\(news) News").foregroundStyle(Color.black)
        }.frame(width: Const.width * 0.38, height: Const.height * 0.05).background(Const.rectangleColor).cornerRadius(3)
            .padding()
    }
    /*
    var body: some View {
        Button(action: {
            getData.fetchCategoryData(for: news)
        }) {
            Text("\(news) News").foregroundStyle(Color.black)
        }.frame(width: Const.width * 0.38, height: Const.height * 0.05).background(Const.rectangleColor).cornerRadius(3)
            .padding()
    }*/
}
/*
#Preview {
    NewsButton( news: "Science")
}
 */
