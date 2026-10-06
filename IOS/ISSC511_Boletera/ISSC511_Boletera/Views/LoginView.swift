//
//  LoginView.swift
//  ISSC511_Boletera
//
//  Created by LIC-N1 on 28/09/26.
//

import SwiftUI

struct LoginView: View {
    //Declaración de variables de estado
    @State private var usuario = ""
    @State private var contraseña = ""
    @State private var loginValido = false
    @State private var error = false
    @State private var mostrarRegistro = false
    
    var body: some View {
        if(loginValido){
            HomeView()
        }else{
            ZStack{
                LinearGradient(colors:[.fondo1, .fondo2],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                VStack{
                    Spacer()
                    VStack{
                        Text("Inicio de sesión")
                            .font(.title)
                            .bold()
                        TextField("Usuario", text: $usuario)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        SecureField("Contraseña", text: $contraseña)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                        Button("Entrar"){
                            //Validación del user y password
                            validarLogin()
                        }.buttonStyle(.borderedProminent)
                            .tint(Color.black)
                        
                        if(error == true){
                            Text("Credemciales incorrectas")
                                .foregroundColor(.red)
                        }
                        
                        Text("¿No tienes cuenta?")
                            .padding(.top, 15)
                        
                        Button("Regístrate"){
                            mostrarRegistro = true
                        }.tint(.blue)
                        
                        
                    }.padding()
                        .background(Color.gray)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding()
                    Spacer()
                }
            }
            .ignoresSafeArea()
            .sheet(isPresented: $mostrarRegistro){
                NavigationStack{
                    //Llamas a tu componente de registro
                    RegistroView().navigationTitle("Registro")
                }
            }
        }
    }
    func validarLogin(){
        if(usuario == "admin" && contraseña == "1234"){
            loginValido = true
        }else{
            error = true
        }
    }
    }

#Preview {
    LoginView()
}
