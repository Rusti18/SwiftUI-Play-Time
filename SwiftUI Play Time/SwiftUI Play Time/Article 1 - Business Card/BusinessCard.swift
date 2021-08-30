//
//  BusinessCard.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 30.08.2021.
//

import SwiftUI

struct BusinessCard: View {
    
    private enum Constants {
        static var imageToLabelsSpacing: CGFloat { 30.0 }
        static var imageSize: CGSize { CGSize(width: 60.0, height: 60.0) }
        static var horizontalPadding: CGFloat { 12.0 }
        static var verticalPadding: CGFloat { 24.0 }
        static var nameFontHeight: CGFloat { 18.0 }
        static var occupationFontHeight: CGFloat { 11.0 }
        static var companyFontHeight: CGFloat { 10.0 }
    }
    
    var body: some View {
        HStack(spacing: Constants.imageToLabelsSpacing) {
            Image("man")
                .resizable()
                .frame(width: Constants.imageSize.width, height: Constants.imageSize.height)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 0.0) {
                Text("John Doe")
                    .font(.system(size: Constants.nameFontHeight, weight: .bold))
                Spacer()
                Text("Attorney at law")
                    .font(.system(size: Constants.occupationFontHeight, weight: .regular))
                Spacer()
                Text("Berkley Ltd.")
                    .font(.system(size: Constants.companyFontHeight, weight: .regular))
                    .italic()
            }.frame(height: Constants.imageSize.height)
        }.padding([.leading, .trailing], Constants.horizontalPadding)
        .padding([.top, .bottom], Constants.verticalPadding)
    }
}

struct BusinessCard_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCard()
    }
}
