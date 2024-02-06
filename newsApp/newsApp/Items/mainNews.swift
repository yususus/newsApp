//
//  mainNews.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import SwiftUI

struct mainNews: View {
    var body: some View {
        VStack{
            ScrollView{
                Spacer()
                Image("c3").resizable().scaledToFit().frame(width: Const.width * 0.8, height: Const.height * 0.3).background(Color.red)
                Text("Haber Başlığı").font(.title).fontWeight(.bold).frame(width: Const.width * 0.8,alignment: .leading)
                    .padding()
                Text("Peyk-i Şevket, Süveyş'te enterne edildiği, Berk-i Satvet ise savaşı Marmara'da ana Osmanlı filosuyla beraber geçirdiği için iki gemi de 1911-1912 yıllarındaki Trablusgarp Savaşı sırasında çatışmalarda yer almadılar. Her iki gemi de Balkan Savaşları'nda daha aktif olarak yer aldı ve Doğu Trakya'daki Osmanlı birliklerini desteklemek için topçu desteği sağladı. I. Dünya Savaşı sırasında her iki gemi de Karadeniz'de görev yaparak devriye gezdi, konvoylara eşlik etti ve Rus limanlarına saldırdı. Berk-i Satvet, Ocak 1915'te İstanbul Boğazı açıklarında mayına çarptı. Yedi ay kadar sonra Peyk-i Şevket, Birleşik Krallık denizaltısı HMS E11 tarafından Marmara Denizi'nde torpidolandı. Her iki gemi de onarıldı ve 1918 yılına kadar hizmete döndü.").frame(width: Const.width * 0.8, alignment: .leading)
            }.frame(width: Const.width * 0.8)
        }
    }
}

#Preview {
    mainNews()
}
