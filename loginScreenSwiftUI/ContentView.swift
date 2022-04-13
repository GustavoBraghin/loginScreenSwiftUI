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
                TextField(" Username", text: $username)
                    .frame(width: UIScreen.main.bounds.width * 0.72, height: UIScreen.main.bounds.width * 0.09, alignment: .center)
                    .background(.white)
                    .cornerRadius(6)
                
                TextField(" Password", text: $password)
                    .frame(width: UIScreen.main.bounds.width * 0.72, height: UIScreen.main.bounds.width * 0.09, alignment: .center)
                    .background(.white)
                    .cornerRadius(6)
                
                Button(action: {
                            print("login")
                        }) {
                            Text("Login")
                                .frame(width: UIScreen.main.bounds.width * 0.72, height: UIScreen.main.bounds.width * 0.09, alignment: .center)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(15)
                        }
                        .padding(.top, 10)
            }
            .padding(.horizontal, 40)
            .padding(.vertical)
            
            
            Text("or connect with")
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.vertical, 5)
            
            HStack{
                
                Button(action: {
                            print("FB")
                        }) {
                            Text("FB")
                                .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.09, alignment: .center)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(15)
                        }
                
                Button(action: {
                            print("TT")
                        }) {
                            Text("TT")
                                .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.09, alignment: .center)
                                .foregroundColor(.white)
                                .background(.cyan)
                                .cornerRadius(15)
                        }
            }
            .padding(5)
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
