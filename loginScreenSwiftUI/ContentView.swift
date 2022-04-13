//
//  ContentView.swift
//  loginScreenSwiftUI
//
//  Created by Gustavo da Silva Braghin on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack{
            
            Text("First Login Screen")
                .font(.title)
                .foregroundColor(.white)
                .padding(.top, 140)
                .padding(.bottom, 20)
                
            VStack{
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                
                TextField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                    .padding(.bottom,10)
                
                Button("Login", action: {
                    print("login")
                })
                .font(.title3)
                .padding(.horizontal, 115.0)
                .padding(.vertical, 5)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
            }
            .padding(.horizontal, 40)
            .padding(.vertical)
            
            
            Text("or connect with")
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.vertical, 5)
            
            HStack{
                Button("FB", action: {
                    print("FB")
                })
                .padding(.horizontal, 30)
                .padding(.vertical, 5)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(15)
                
                Button("TT", action: {
                    print("TT")
                })
                .padding(.horizontal, 30)
                .padding(.vertical, 5)
                .foregroundColor(.white)
                .background(.cyan)
                .cornerRadius(15)
                
            }.padding(5)
            Spacer()
        }
        .background(Image("background").resizable().scaledToFill())
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
