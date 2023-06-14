//
//  ContentView.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @Binding var name: String
    @State private var lastName = ""

    var showPersonalInfo: Bool 

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
            .ignoresSafeArea()
            
            NavigationStack {
                VStack {
                    Text("Profile")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                    
                    ZStack{
                        Circle()
                            .foregroundColor(Color.gray)
                            .frame(width: 160, height: 160)
                        Image("profile_placeholder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                    }
                    
                    if !showPersonalInfo {
                        Text("Personal information missing")
                            .font(.system(.title2, design: .rounded))
                            .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                        Spacer ()
                        
                        NavigationLink(destination: PersonalInfo(name:"", lastName:"", phoneNumber:"", email: "", address: "")
                            //
                        ) {
                            Text("Enter now")
                        }

                        .padding(.bottom, 200.0)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.996, green: 0.373, blue: 0.333))
                        .font(.title3)
                    } else {
                        Text("Welcome, \(name)!")
                            .font(.system(.title2, design: .rounded))
                    }
                    Spacer ()
                    
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                NavigationLink(destination: Home(name: $name, showPersonalInfo: showPersonalInfo)
                                    .navigationBarBackButtonHidden(true)
                                ) {
                                    Image(systemName: "house.fill")
                                        .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                                }
                                NavigationLink(destination: ContentView(name: $name, showPersonalInfo: showPersonalInfo)
                                    .navigationBarBackButtonHidden(true)
                                ) {
                                    Image(systemName: "person.fill")
                                        .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                                }
                                NavigationLink(destination: Resume()
                                    .navigationBarBackButtonHidden(true)
                                ) {
                                    Image(systemName: "folder.fill")
                                        .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                                }
                            }
                            
                        }
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(false)
                    
                }
            }
        }
    }
}

//Hello
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: .constant(""), showPersonalInfo: false)
    }
}
