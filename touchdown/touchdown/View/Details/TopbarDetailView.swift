//
//  TopbarDetailView.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct TopbarDetailView: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -25)
            Spacer()
            
            //Image
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -30)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopbarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopbarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
