//
//  LoginView.swift
//  Crypto
//
//  Created by Suelio Sousa on 26/01/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            AppColor.background.edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("crypto_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                Text("Crypto")
                    .font(AppFont.bold(size: 22))
                    .foregroundColor(AppColor.primary)
                Text("The biggest NFT marketplace of the world")
                    .font(AppFont.regular(size: 14))
                    .foregroundColor(AppColor.grayMedium)
                    .padding(.top, 1)
                CustomTextField(text: $email, placeholder: "Digite algo", title: "Email").padding(.horizontal).padding(.top, 20)
                CustomTextField(text: $password, placeholder: "Digite algo", title: "Password")
                    .padding(.horizontal).padding(.top, 10)
                
                Spacer()
            }
            .padding()
        }
       
    }
}

#Preview {
    LoginView()
}
