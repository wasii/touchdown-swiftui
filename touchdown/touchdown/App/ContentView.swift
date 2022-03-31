//
//  ContentView.swift
//  touchdown
//
//  Created by NaheedPK on 31/03/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 5)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.6)
                            .padding(.vertical, 0)
                        CategoryGridView()
                        FooterView()
                            .padding(.horizontal)
                        
                    }// : VStack
                }// : ScrollView
            } // - VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }// - ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    } // - BODY
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
