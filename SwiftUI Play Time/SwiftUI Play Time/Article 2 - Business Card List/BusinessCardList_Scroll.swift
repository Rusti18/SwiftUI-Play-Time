//
//  BusinessCardList_Scroll.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 11.10.2022.
//

import SwiftUI

struct BusinessCardList_Scroll: View {
    var body: some View {
        ScrollView {
            VStack {
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
}

struct BusinessCardList_Scroll_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCardList_Scroll()
    }
}
