//
//  ContentView.swift
//  AuthUI
//
//  Created by Adem Tarhan on 11.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    @Namespace var name

    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)

            HStack(spacing: 0) {
                Button(action: {
                    withAnimation(.spring()) {
                        index = 0
                    }
                }) {
                    VStack {
                        Text("Sign In")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .blue : .gray)

                        ZStack {
                            Capsule().fill(Color.black.opacity(0.05))
                                .frame(height: 5)

                            if index == 0 {
                                Capsule().fill(
                                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                ).frame(height: 5)
                                  //  .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }

                Button(action: {
                    withAnimation(.spring()) {
                        index = 1
                    }
                }) {
                    VStack {
                        Text("Sign Up")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .blue : .gray)

                        ZStack {
                            Capsule().fill(Color.black.opacity(0.05))
                                .frame(height: 5)

                            if index == 1 {
                                Capsule().fill(
                                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                ).frame(height: 5)
                                    //.matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }.padding(.top, 30)
            
            if index == 0 {
                LogIn()
            }else {
                SignUp()
            }
        }
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
