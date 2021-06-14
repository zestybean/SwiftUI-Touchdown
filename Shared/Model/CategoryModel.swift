//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Brando Lugo on 6/12/21.
//

import SwiftUI

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
