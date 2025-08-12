//
//  ViewExtensions.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

extension View {
    public func withRouter() -> some View {
        modifier(RouterViewModifier())
    }
}
