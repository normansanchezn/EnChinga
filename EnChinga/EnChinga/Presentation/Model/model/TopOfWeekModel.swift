//
//  TopOfWeekModel.swift
//  EnChinga
//
//  Created by Norman Sanchez on 15/08/25.
//

import SwiftUI

struct TopOfWeekModel {
    var id: UUID = .init()
    var title: LocalizedStringKey
    var backgroundColor: Color
    var price: String
    var imageBackground: String
    var restaurantName: String
}


var topOfWeekModelList: [TopOfWeekModel] = [
    TopOfWeekModel(title: "shepherd_tacos_text", backgroundColor: .orange, price: "$129.00", imageBackground: "shepherd_tacos_image", restaurantName: "Taquitos el veneno"),
    TopOfWeekModel(title: "tamales_text", backgroundColor: .orange, price: "$22.00", imageBackground: "tamales_image", restaurantName: "Tamales Don Pepe"),
    TopOfWeekModel(title: "pizza_text", backgroundColor: .orange, price: "$100", imageBackground: "pizza_image", restaurantName: "Little Ceasar"),
]
