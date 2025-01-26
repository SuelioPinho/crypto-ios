//
//  ContentView.swift
//  Crypto
//
//  Created by Suelio Sousa on 26/01/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .topTrailing, endPoint: .center)
                            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("slash_icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    SplashView()
}
