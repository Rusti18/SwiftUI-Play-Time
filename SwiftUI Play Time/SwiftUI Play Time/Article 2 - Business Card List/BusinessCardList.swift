//
//  BusinessCardList.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 10.10.2022.
//

import SwiftUI

struct BusinessCardList: View {
    var body: some View {
        List {
            BusinessCard(viewModel:
                            BusinessCardViewModel(
                                imageName: "man",
                                name: "Jack Doe",
                                occupation: "Plumber",
                                workplace: "Plumbers LLC"
                            )
            )
            BusinessCard(viewModel:
                            BusinessCardViewModel(
                                imageName: "man",
                                name: "John Doe",
                                occupation: "Dentist",
                                workplace: "Dentists LLC"
                            )
            )
        }
    }
}

struct BusinessCardList_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCardList()
    }
}
