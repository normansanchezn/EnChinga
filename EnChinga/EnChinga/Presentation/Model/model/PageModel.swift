//
//  PageModel.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//
import SwiftUI

struct PageModel: Identifiable {
    var id = UUID()
    var image: String
    var title: LocalizedStringKey
    var subtitle: LocalizedStringKey
}
