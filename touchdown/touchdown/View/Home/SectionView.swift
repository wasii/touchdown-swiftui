//
//  SectionView.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockWise: Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
