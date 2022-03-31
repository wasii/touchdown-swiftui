//
//  LogoView.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct LogoView: View {
    //MARK: - properties
    
    //MARK: - body
    var body: some View {
        HStack(spacing: 4) {
            Text("E".uppercased())
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            Text("Commerce".uppercased())
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.black)
            
        }// : HStack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
