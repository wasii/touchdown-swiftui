//
//  ProductDetailView.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct ProductDetailView: View {
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
            //Detail Bottom Bar
            //Description
            //Quantity + Favourite
            
            Spacer()
            //Add to Cart
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
