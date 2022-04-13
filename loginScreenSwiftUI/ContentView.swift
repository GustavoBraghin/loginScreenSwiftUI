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
    
    let bound = UIScreen.main.bounds
    
    var body: some View {
        
        VStack{
            
            Text("First Login Screen")
                .font(.title)
                .foregroundColor(.white)
                
            
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Login", action: {
                print("login")
            })
            .padding(5)
            .background(.blue)
            .foregroundColor(.white)
            
            Text("or connect with")
                .font(.footnote)
                .foregroundColor(.white)
            
            HStack{
                Button("FB", action: {
                    print("FB")
                })
                .padding(5)
                .foregroundColor(.white)
                .background(.blue)
                
                Button("TT", action: {
                    print("TT")
                })
                .padding(5)
                .foregroundColor(.white)
                .background(.cyan)
                
            }.padding(5)
        }
        .frame(width: bound.width, height: bound.height, alignment: .center)
        .background(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
