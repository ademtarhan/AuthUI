//
//  LogIn.swift
//  AuthUI
//
//  Created by Adem Tarhan on 11.05.2023.
//

import SwiftUI

struct LogIn: View {
    @State var password = ""
    var socialMedia = ["twitter", "facebook", "google"]

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Hello").font(.body).fontWeight(.bold)
                    Text("Daniel").font(.title).fontWeight(.bold)

                    Button(action: {}) {
                        Text("This is not me")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                Spacer(minLength: 0)

                Image("person").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80).clipShape(Circle())
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            VStack(alignment: .leading, spacing: 15) {
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)

                TextField("password", text: $password).padding()
                    .background(.white)
                    .cornerRadius(5)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: -5)

                Button(action: {}) {
                    Text("Forgot password")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }.padding(.top, 10)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            Button(action: {}) {
                Text("Forgot password")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(10)

            }.padding(.top, 10)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: -5)

            Button(action: {}) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid").font(.system(size: 25))

                    Text("Sign in with face id")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    Spacer()

                }.padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1))

            }.padding(.top, 20)
                .padding(.horizontal, 25)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: -5)
            
            
            
            HStack(spacing: 30){
                ForEach(socialMedia, id: \.self){ name in
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

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
