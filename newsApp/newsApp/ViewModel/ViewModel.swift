//
//  ViewModel.swift
//  newsApp
//
//  Created by yusuf on 13.02.2024.
//

import Foundation
import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit


struct dataType: Identifiable, Hashable{
    var id: String
    var desc : String
    var title : String
    var url : String
    var image : String
    
}

class GetData : ObservableObject {
    @Published var datas = [dataType]()
    
    func fetchCategoryData(for category: String) {
        
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=\(category)&from=2024-01-28&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                            print("No data returned from API")
                            return
                        }
                        
                        do {
                            let response = try JSONDecoder().decode(NewsResponse.self, from: data)
                            DispatchQueue.main.async {
                                self.datas = response.articles.map {
                                    dataType(
                                        id: $0.publishedAt,
                                        desc: $0.description ?? "",
                                        title: $0.title,
                                        url: $0.url,
                                        image: $0.urlToImage ?? ""
                                    )
                                }
                            }
                        } catch {
                            print("Error decoding JSON: \(error.localizedDescription)")
                        }
        }.resume()
    }
}

struct NewsResponse: Decodable {
    let articles: [ArticleResponse]
}

struct ArticleResponse: Decodable {
    let publishedAt: String
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
}

struct webView : UIViewRepresentable{
    
    var url: String
    func makeUIView(context: UIViewRepresentableContext<webView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<webView>) {
        
    }
    
}

