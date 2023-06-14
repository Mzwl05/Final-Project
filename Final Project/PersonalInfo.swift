//
//  PersonalInfo.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/14/23.
//

import SwiftUI

struct PersonalInfo: View {
    @State var name: String
    var showPersonalInfo: Bool {
        return name != ""
    }
    @State var lastName: String
    @State var phoneNumber: String
    @State var email: String
    @State var address: String

    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                                .ignoresSafeArea()
            VStack {
                //text
                Text("Input your information")
                    .font(.system(.title, design: .rounded))
                
                //text field
                TextField("First name", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.system(.title, design: .rounded))
                    .border(Color(red: 0.2, green: 0.216, blue: 0.270), width: 1)
                    .padding()
                
                
                //second text field
                TextField("Last name", text: $lastName)
                    .multilineTextAlignment(.center)
                    .font(.system(.title, design: .rounded))
                    .border(Color(red: 0.2, green: 0.216, blue: 0.270), width: 1)
                    .padding()
                
                //third text field
                TextField("Phone Number", text: $phoneNumber)
                    .multilineTextAlignment(.center)
                    .font(.system(.title, design: .rounded))
                    .border(Color(red: 0.2, green: 0.216, blue: 0.270), width: 1)
                    .padding()
                
                //fourth text field
                TextField("Email", text: $email)
                    .multilineTextAlignment(.center)
                    .font(.system(.title, design: .rounded))
                    .border(Color(red: 0.2, green: 0.216, blue: 0.270), width: 1)
                    .padding()
                
                //fifth text field
                TextField("Address", text: $address)
                    .multilineTextAlignment(.center)
                    .font(.system(.title, design: .rounded))
                    .border(Color(red: 0.2, green: 0.216, blue: 0.270), width: 1)
                    .padding()
                
                //button
                
                NavigationLink(destination: ContentView(name:$name, showPersonalInfo: showPersonalInfo)
                    .navigationBarBackButtonHidden(true)
                ) {
                    //                //func updateVariable() {
                    //                    showPersonalInfo = false
                    Text("Submit Button")
                    
                }
                .font(.system(.title2, design: .rounded))
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 199/255, green: 239/255, blue: 207/255))
                .foregroundColor(Color(red: 0.2, green: 0.216, blue: 0.270))
                
            }
            
        }
    }
}

struct PersonalInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfo(name:"", lastName:"", phoneNumber:"", email: "", address: "")
    }
}
