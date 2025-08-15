//
//  HomeView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

struct HomeView: View {
    @State var homeTitleText = "home_title"
    @State var deliveryStatusModel: DeliveryStatusModel? = DeliveryStatusModel(deliveryStatusType: DeliveryStatusType.delivered)
    @State var favoriteRestaurantModel: FavoriteRestaurantCardModel? = FavoriteRestaurantCardModel(
        title: "favorite_restaurant_title",
        discount: "favorite_restaurant_discount",
        imageName: "welcome_image",
        buttonText: "favorite_restaurant_button_text"
    )
    @State var textNameFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "", color: .black, isBold: true),
        hint: "search_bar_hint",
        keyboardType: .namePhonePad
    )
    @State var titleTopOfWeekModel: TextModel = TextModel(text: "top_of_week_title", color: .black, isBold: true)
    
    var body: some View {
        ScrollView {
            TitleText(text: "home_title")
            EditText(textFieldModel: $textNameFieldModel)
            DeliveryStatusCard(deliveryStatusModel: $deliveryStatusModel)
            FavoriteRestaurantCard(favoriteRestauranteCardModel: $favoriteRestaurantModel)
            HStack {
                TitleText(text: "top_of_week_title").padding(.top, 8).font(.largeTitle)
                Spacer()
            }.padding(.horizontal, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(topOfWeekModelList, id = \.id) { topOfWeekModel in
                        TopOfWeekCard(topOfWeekModel: topOfWeekModel)
                    }
                }
            }
        }
        .padding()
        .onAppear() {
            deliveryStatusModel?.onTap = {
                print("Le diste click a esta vaina")
            }
            favoriteRestaurantModel?.onOrder = {
                print("Le diste click a esta vaina ww")
            }
        }
    }
}
