//
//  SignUp.swift
//  AuthUI
//
//  Created by Adem Tarhan on 11.05.2023.
//

import SwiftUI

struct SignUp: View {
    @State var accountName = ""
    @State var password = ""
    var socialMedia = ["twitter", "facebook", "google"]

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 15) {
                Text("Create Account")
                    .font(.title)
                    .fontWeight(.bold)

                Text("Account Name")
                    .font(.body)
                    .fontWeight(.bold)

                TextField("account name", text: $accountName).padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)

                Text("Password")
                    .font(.body)
                    .fontWeight(.bold)

                TextField("password", text: $accountName).padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)

            }.padding(.horizontal, 20)
                .padding(.top, 20)

            VStack(alignment: .leading, spacing: 20) {
                Button(action: {}) {
                    Text("Sign Up")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 40)
                        .padding(.vertical)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(5)
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: -5)
            }

            VStack {
                Button(action: {}) {
                    HStack(spacing: 20) {
                        Image(systemName: "faceid").font(.system(size: 25))

                        Text("Sign up with face id")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .cornerRadius(5)
                        Spacer()
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1))
            }.padding(.horizontal, 20)
                .padding(.top, 20)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: -5)

            HStack(spacing: 30) {
                ForEach(socialMedia, id: \.self) { name in
                    Button(action: {}) {
                        Image(name).renderingMode(.template)
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                }
            }.padding(.top, 30)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
