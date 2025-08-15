//
//  FavoriteRestaurantCard.swift
//  EnChinga
//
//  Created by Norman Sanchez on 13/08/25.
//

import SwiftUI

struct FavoriteRestaurantCard: View {
    
    @Binding var favoriteRestauranteCardModel: FavoriteRestaurantCardModel?
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text(favoriteRestauranteCardModel?.title ?? "dummy_text")
                    .font(.headline)
                    .foregroundColor(Color("TitleCardColor"))
                    .padding(.leading, 16)
                
                Text(favoriteRestauranteCardModel?.discount ?? "dummy_text")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, 16)
                
                Button {
                    favoriteRestauranteCardModel?.onOrder?()
                } label: {
                    Text(favoriteRestauranteCardModel?.buttonText ?? "dummy_text")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color("PrimaryColor"))
                        .cornerRadius(8)
                }.padding(.leading, 16)
            }
            Spacer()
            Image(favoriteRestauranteCardModel?.imageName ?? "place_holder")
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 130)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding(.vertical, 16)
        .background(.white)
        .shadow(radius: 2)
    }
}
