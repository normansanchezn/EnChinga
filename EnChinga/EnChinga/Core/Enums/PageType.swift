//
//  PageType.swift
//  EnChinga
//
//  Created by Norman Sanchez on 14/08/25.
//

import SwiftUI

enum PageType {
    case fristPage
    case secondPage
    
    var title: LocalizedStringKey {
        switch self {
            case .fristPage:
                return "welcome_title_step_one"
            case .secondPage:
                return "welcome_title_step_two"
        }
    }
    
    var subtitle: LocalizedStringKey {
        switch self {
            case .fristPage:
                return "welcome_subtitle_step_one"
            case .secondPage:
                return "welcome_subtitle_step_two"
        }
    }
    
    var image: String {
        switch self {
        case .fristPage:
            return "welcome_image_step_one"
        case .secondPage:
            return "welcome_image_step_two"
        }
    }
}
