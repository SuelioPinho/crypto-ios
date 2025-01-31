//
//  CustomTextField.swift
//  Crypto
//
//  Created by Suelio Sousa on 27/01/25.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    @FocusState private var isFocused: Bool
    var placeholder: String
    var title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(AppFont.bold(size: 14))
                .foregroundColor(AppColor.grayMedium)
            
            ZStack(alignment: .trailing) {
                TextField(placeholder, text: $text)
                    .frame(height: 45)
                    .focused($isFocused)
                    .padding(10)
                    .padding(.trailing, 30)
                    .foregroundStyle(.black)
                    .accentColor(.black)
                    .font(AppFont.medium(size: 16))
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(AppColor.grayLight)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(isFocused ? .green : AppColor.grayLight, lineWidth: 2) // A borda
                    )
                
                if !text.isEmpty {
                    Button(action: {
                        text = ""
                    }) {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing, 10)
                    }
                }
            }
        }
    }
}
