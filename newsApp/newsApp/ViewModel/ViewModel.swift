//
//  ViewModel.swift
//  newsApp
//
//  Created by yusuf on 13.02.2024.
//

import Foundation
import SwiftyJSON
import SDWebImageSwiftUI

struct dataType: Identifiable{
    var id: String
    var desc : String
    var title : String
    var url : String
    var image : String
    
}

class getData : ObservableObject {
    @Published var datas = [dataType]()
    
    init(){
        let source = "https://newsapi.org/v2/everything?q=tech&from=2024-01-15&sortBy=publishedAt&apiKey=5029c26cde67444ebdc6b737b9586203"
        
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

