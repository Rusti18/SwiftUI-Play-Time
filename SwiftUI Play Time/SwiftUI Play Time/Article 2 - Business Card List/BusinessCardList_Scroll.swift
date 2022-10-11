//
//  BusinessCardList_Scroll.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 11.10.2022.
//

import SwiftUI

struct BusinessCardList_Scroll: View {
    
    let viewModels = [
        BusinessCardViewModel(
            imageName: "man",
            name: "Jack Doe",
            occupation: "Plumber",
            workplace: "Plumbers LLC"
        ),
        BusinessCardViewModel(
            imageName: "man",
            name: "John Doe",
            occupation: "Dentist",
            workplace: "Dentists LLC"
        )
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModels) { viewModel in
                    BusinessCard(viewModel: viewModel)
                }
            }
        }
    }
}

struct BusinessCardList_Scroll_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCardList_Scroll()
    }
}
