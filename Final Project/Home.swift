//
//  ContentView.swift
//  HomePage
//
//  Created by Keila Trigo on 14/06/23.
//

import SwiftUI

struct Home: View {
    
    @Binding var name: String
    @Binding var lastName: String
    @Binding var phoneNumber: String
    @Binding var email: String
    @Binding var address: String
    var showPersonalInfo: Bool
    @Binding var name2: String

    var body: some View {
        
       
        
        NavigationStack{
            ZStack{
                Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                    .ignoresSafeArea()
                ScrollView(.vertical){
                    
//                tips and posts
                    HStack{
                        Text("Tips and Posts")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                            .padding()
                        }
                
//                navigation links
                    
                    
                        
                    NavigationLink(destination: InterviewTips()){
                        Image("InterviewTips")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .frame(width: 300)
                    }
                    Spacer(minLength: 20)
                    
                    NavigationLink(destination: NoResume()){
                        Image("NoResume")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .frame(width: 300)
                    }
                    Spacer(minLength: 20)
                    
                    NavigationLink(destination: TechInterview()){
                        Image("TechInterview")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .frame(width: 300)
                    }
                    
                    Spacer(minLength: 20)
                    
                    NavigationLink(destination: EmailTips()){
                        Image("EmailTips")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .frame(width: 300)
                    }
                    
                    
                    
                
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: Home(name: $name,lastName: $lastName, phoneNumber:$phoneNumber, email:$email, address: $address, showPersonalInfo: showPersonalInfo, name2: $name2)
                            .navigationBarBackButtonHidden(true)
                        ) {
                            Image(systemName: "house.fill")
                                .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                        }
                        NavigationLink(destination: ContentView(name: $name,lastName: $lastName, phoneNumber:$phoneNumber, email:$email, address: $address, showPersonalInfo: showPersonalInfo)
                            .navigationBarBackButtonHidden(true)
                        ) {
                            Image(systemName: "person.fill")
                                .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                        }
                        NavigationLink(destination: ResumeOptions(name2: $name2,lastName: $lastName, phoneNumber:$phoneNumber, email:$email, address: $address)
                            
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


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(name: .constant(""),lastName: .constant(""), phoneNumber: .constant(""), email: .constant(""), address: .constant(""),  showPersonalInfo: false, name2: .constant(""))
    }
}
