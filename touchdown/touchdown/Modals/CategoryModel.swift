//
//  CategoryModel.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
