//
//  ButtonView.swift
//  StateAndDataFlowSUI
//
//  Created by Кирилл on 11.10.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let backgroundColor: Color
    let titleColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(titleColor)
        }
        .frame(width: 200, height: 60)
        .background(backgroundColor)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black,lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Start", backgroundColor: .red, titleColor: .white, action: {})
    }
}
