//
//  Const.swift
//  newsApp
//
//  Created by yusuf on 6.02.2024.
//

import Foundation
import SwiftUI
class Const{
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
    
    static let whiteColor = Color(UIColor(hex: "FDFCFA"))
    static let rectangleColor = Color(UIColor(hex: "A5A5A5"))
    static let textColor5 = Color(UIColor(hex: "9FB4D2"))
    static let backColor = Color(UIColor(hex: "13182B"))
}
struct PressedButtonStyle: ButtonStyle {
    @State var isPressed: Bool
    func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .frame(width: Const.width * 0.38, height: Const.height * 0.05)
            .background(configuration.isPressed ? Const.rectangleColor.opacity(0.5) : Const.rectangleColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
