//
//  PrimaryButtonModel.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct ButtonModel {
    var textButton: LocalizedStringKey
    var onButtonClicked: (() -> Void)?
}
