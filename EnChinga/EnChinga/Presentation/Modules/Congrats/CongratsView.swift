//
//  CongratsView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

public struct CongratsView: View {
    @Environment(Router.self) var router
    
    @State private var congratsImage = "congrats_view"
    @State private var titleCongratsView: LocalizedStringKey = "congrats_text"
    @State private var subtitleCongratsView: LocalizedStringKey = "congrats_subtitle_text"
    @State private var buittonmModel: ButtonModel? = ButtonModel(textButton : "get_started_text")
    
    public var body: some View {
        VStack {
            Spacer()
            CircularImage(image: $congratsImage)
            TitleText(text: $titleCongratsView)
            SubtitleText(text: $subtitleCongratsView)
            PrimaryButton(buttonModel: $buittonmModel)
            Spacer()
        }.onAppear() {
            buittonmModel?.onButtonClicked = {
                router.navigateToHome()
            }
        }
    }
}
