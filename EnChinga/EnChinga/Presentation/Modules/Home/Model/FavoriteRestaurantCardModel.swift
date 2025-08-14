//
//  FavoriteRestaurantCardModel.swift
//  EnChinga
//
//  Created by Norman Sanchez on 13/08/25.
//

import SwiftUI

struct FavoriteRestaurantCardModel {
    var title: LocalizedStringKey
    var discount: LocalizedStringKey
    var imageName: String
    var buttonText: LocalizedStringKey
    var onOrder: (() -> Void)?
}
