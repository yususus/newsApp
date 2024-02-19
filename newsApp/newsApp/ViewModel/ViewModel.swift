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


struct dataType: Identifiable{
    var id: String
    var desc : String
    var title : String
    var url : String
    var image : String
    
}

class getData : ObservableObject {
    @Published var datas = [dataType]()
    var urls = ["Teknoloji": "https://newsapi.org/v2/everything?q=technology&from=2024-01-15&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203",
            "Spor": "https://newsapi.org/v2/everything?q=sports&from=2024-01-15&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203",
                "Magazin":"https://newsapi.org/v2/everything?q=magazines&from=2024-01-19&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203",
                "Bilim": "https://newsapi.org/v2/everything?q=science&from=2024-01-19&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203",
                "Ekonomi": "https://newsapi.org/v2/everything?q=economy&from=2024-01-19&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203"
            ]
    
    init(){
        let source = "https://newsapi.org/v2/everything?q=technology&from=2024-01-15&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203"
        
        let url = URL(string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {(data, _, error) in
            if error != nil{
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"]{
                
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let image = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.datas.append(dataType(id: id, desc: description, title: title, url: url, image: image))
                }
            }
        }.resume()
    }
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

