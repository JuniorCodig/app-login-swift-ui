//
//  ContentView.swift
//  app-login
//
//  Created by user241462 on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    var body: some View {
        
        VStack {
            
            VStack{
                Color(hex: 34).opacity(0.5)
                    .ignoresSafeArea()
                Image("logo-login")
                    .background(Color(hex: 34).opacity(0.5))
                    .padding(.bottom, 40)
                 
                Spacer()
            }
            .background(Color(hex: 349).opacity(0.5))
            
            VStack{
                Color(hex: 349).opacity(0.5)
                VStack{
                    
                    Text("Crie Sua Conta")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                        .padding(.trailing, 160)
                    
                    Text("E-mail")
                        .padding(.top, 20)
                        .padding(.trailing, 310)
                    
                    TextField("Nome de Usuário", text: $username)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    HStack{
                        Text("Senha")
                        Spacer()
                        Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                            Text("Recuperar Senha")
                        }
                        
                    }
                    .padding(.top, 20)
                    
                    SecureField("Senha", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    HStack{
                        Text("Lembrar Minha Senha")
                        
                        Spacer()
                        
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            
                        }
                    }
                    
                    Button(action: {
                        // Aqui você pode adicionar a lógica de autenticação
                        // Por exemplo, verificar se o nome de usuário e senha estão corretos
                        if username == "usuario" && password == "senha" {
                            isLoggedIn = true
                        }
                    }) {
                        Text("Criar Conta")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.top, 20)
                    }
                    
                    Button(action: {
                        // Aqui você pode adicionar a lógica de autenticação
                        // Por exemplo, verificar se o nome de usuário e senha estão corretos
                        if username == "usuario" && password == "senha" {
                            isLoggedIn = true
                        }
                    }) {
                        HStack{
                            
                            Image(systemName: "applelogo")                .font(.title)
                                .padding(.leading, 90)
                            
                            
                            Text("Continuar com Apple")
                                .font(.body)
                                .fontWeight(.bold)
                                .padding(.top)
                                .padding(.bottom)
                                .frame(maxWidth: .infinity)
                                .padding(.trailing, 50)
                            
                        }
                        .background(Color.black)
                        .foregroundColor(.white)
                        
                    }
                    .padding(.top, 5)
                    
                    HStack{
                        Text("Ja Possui uma conta ?")
                        
                        Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                            Text("Entre")
                        }
                        
                    }
                }
                .padding()
            }
            .background(Color.white)
            .cornerRadius(20)
            
        }
        .background(.black)
        
        
    }
    
}

extension Color {
    init(hex: UInt) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
