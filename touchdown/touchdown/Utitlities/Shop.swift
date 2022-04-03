//
//  File.swift
//  touchdown
//
//  Created by NaheedPK on 02/04/2022.
//

import Foundation


class Shop: ObservableObject {
    @Published var isProductSelected: Bool = false
    @Published var selectedProduct: Product? = nil
}
