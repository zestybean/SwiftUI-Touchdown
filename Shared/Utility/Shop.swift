//
//  Shop.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/18/21.
//

import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
