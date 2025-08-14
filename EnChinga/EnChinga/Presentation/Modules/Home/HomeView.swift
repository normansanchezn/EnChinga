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
    
    var body: some View {
        ScrollView {
            DeliveryStatusCard(deliveryStatusModel: $deliveryStatusModel)
            FavoriteRestaurantCard(favoriteRestauranteCardModel: $favoriteRestaurantModel)
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
