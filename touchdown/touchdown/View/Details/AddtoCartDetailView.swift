//
//  AddtoCartDetailView.swift
//  touchdown
//
//  Created by NaheedPK on 02/04/2022.
//

import SwiftUI

struct AddtoCartDetailView: View {
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct AddtoCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
