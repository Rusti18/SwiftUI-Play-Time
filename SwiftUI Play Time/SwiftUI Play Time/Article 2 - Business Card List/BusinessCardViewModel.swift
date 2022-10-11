//
//  BusinessCardViewModel.swift
//  SwiftUI Play Time
//
//  Created by Mihai Andrei Rustiuc on 11.10.2022.
//

import Foundation

struct BusinessCardViewModel: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let occupation: String
    let workplace: String
}
