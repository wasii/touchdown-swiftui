//
//  ProductDetailView.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            DetailViewNavigationBar()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 10)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //Detail Top bar
            TopbarDetailView()
                .padding(.horizontal)
                .zIndex(1 )
            //Detail Bottom Bar
            VStack(alignment: .leading, spacing: 0, content: {
                
                //rating+sizes
                RatingSizedDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? "")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                //Quantity + Favourite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                //Add to Cart
                AddtoCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? 0.0, green: shop.selectedProduct?.green ?? 0.0, blue: shop.selectedProduct?.blue ?? 0.0)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
