//
//  DrawerMenu.swift
//  newsApp
//
//  Created by yusuf on 7.02.2024.
//

import SwiftUI

struct DrawerMenu: View {
    @StateObject var getData = GetData()
    @Binding var isOpen : Bool
    @Binding var selectedCategory: String
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading){
                Image("Union").resizable().frame(width: Const.width * 0.08,height: Const.height * 0.03).padding(.top, Const.height * 0.05).padding(.leading, 13).onTapGesture {
                    isOpen = false
                }
                
                Image("c3").resizable().aspectRatio(contentMode: .fit).frame(width: Const.width * 0.3, height: Const.height * 0.1).padding().padding(.top, 25)
                Text("Categories").font(.title2).fontWeight(.bold).padding()
                ScrollView{
                    
                    DrawerMenuButton(label: "Home", adress: "Home")
                    DrawerMenuButton(label: "Sports", adress: "sports")
                    DrawerMenuButton(label: "Economy", adress: "economy")
                    DrawerMenuButton(label: "Science", adress: "science")
                    DrawerMenuButton(label: "Technology", adress: "technology")
                    DrawerMenuButton(label: "Magazines", adress: "magazines")
                }
                
                Spacer()
            }.frame(width: Const.width * 0.4, height: Const.height * 1).background(Color.gray).frame(width: Const.width * 1, height: Const.height * 1, alignment: .leading).opacity(0.9)
                .offset(x: isOpen ? 0 : -Const.width * 2)
                .animation(.easeInOut(duration: 1)) // Add smooth animation
        }
    }
}

struct DrawerMenuButton: View {
    @StateObject var getData = GetData()
    var label: String
    var adress: String
    var body: some View {
        Button(action: {
            getData.fetchCategoryData(for: adress)
        }) {
            Text(label)
                .foregroundStyle(Color.black)
                .fontWeight(.bold)
        }.padding()
    }
}

#Preview {
    DrawerMenu(isOpen: .constant(true), selectedCategory: .constant("Spor"))
}
