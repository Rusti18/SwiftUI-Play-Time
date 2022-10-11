//
//  BusinessCard.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 30.08.2021.
//

import SwiftUI

struct BusinessCard: View {
    
    // MARK: - Properties
    
    private let imageName: String
    private let name: String
    private let occupation: String
    private let workplace: String
    
    // MARK: - Init
    
    init(imageName: String, name: String, occupation: String, workplace: String) {
        self.imageName = imageName
        self.name = name
        self.occupation = occupation
        self.workplace = workplace
    }
    
    // MARK: - Constants
    
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
            Image(imageName)
                .resizable()
                .frame(width: Constants.imageSize.width, height: Constants.imageSize.height)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 0.0) {
                Text(name)
                    .font(.system(size: Constants.nameFontHeight, weight: .bold))
                Spacer()
                Text(occupation)
                    .font(.system(size: Constants.occupationFontHeight, weight: .regular))
                Spacer()
                Text(workplace)
                    .font(.system(size: Constants.companyFontHeight, weight: .regular))
                    .italic()
            }.frame(height: Constants.imageSize.height)
        }.padding([.leading, .trailing], Constants.horizontalPadding)
        .padding([.top, .bottom], Constants.verticalPadding)
    }
}

struct BusinessCard_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCard(
            imageName: "man",
            name: "John Doe",
            occupation: "Attorney at law",
            workplace: "Berkeley Ltd."
        )
    }
}
