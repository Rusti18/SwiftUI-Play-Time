//
//  BusinessCardList.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 10.10.2022.
//

import SwiftUI

struct BusinessCardList: View {
    
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
        List(viewModels) { viewModel in
            BusinessCard(viewModel: viewModel)
        }
    }
}

struct BusinessCardList_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCardList()
    }
}
