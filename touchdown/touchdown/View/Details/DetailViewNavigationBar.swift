//
//  DetailViewNavigationBar.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct DetailViewNavigationBar: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        } // - HStack
    }
}

struct DetailViewNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewNavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
