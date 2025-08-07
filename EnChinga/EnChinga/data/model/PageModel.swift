//
//  PageModel.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//
import SwiftUI

struct PageModel: Identifiable {
    let id = UUID()
    let image: String
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
}
