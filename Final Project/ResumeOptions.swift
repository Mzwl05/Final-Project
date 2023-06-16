//
//  ResumeOptions.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/14/23.
//

import SwiftUI

struct ResumeOptions: View {
    @Binding var name2: String
    @Binding var lastName: String
    @Binding var phoneNumber: String
    @Binding var email: String
    @Binding var address: String

    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                .ignoresSafeArea()
            VStack {
                Text("What is this resume for?")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                    .padding(.horizontal, 8.0)
                    .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                
                NavigationStack{
                    HStack {
                        
                        NavigationLink(destination: ResumeBuilding(name2: $name2, lastName: $lastName, phoneNumber:$phoneNumber, email:$email, address: $address)
                        ) {
                            VStack {
                                Image(systemName: "graduationcap")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                Text("SCHOOL")
                                    .font(.title2)
                            }
                        }
                        .padding()
                        .foregroundColor(Color(red: 0.996, green: 0.373, blue: 0.333))
                        
                        NavigationLink(destination: ResumeBuilding(name2: $name2, lastName: $lastName, phoneNumber:$phoneNumber, email:$email, address: $address)
                        ) {
                            VStack {
                                Image(systemName: "briefcase")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                Text("JOB")
                                    .font(.title2)
                            }
                        }
                        .padding()
                        .foregroundColor(Color(red: 0.996, green: 0.373, blue: 0.333))
                        
                        NavigationLink(destination: ResumeBuilding(name2: $name2, lastName: $lastName, phoneNumber:$phoneNumber, email:$email, address: $address)
                        ) {
                            VStack {
                                Image(systemName: "ellipsis")
                                    .resizable()
                                    .frame(width: 60, height: 12)
                                Text("OTHER")
                                    .font(.title2)
                            }
                        }
                        .padding()
                        .foregroundColor(Color(red: 0.996, green: 0.373, blue: 0.333))
                    }
                }
            }
        }
      }
    
    }

struct ResumeOptions_Previews: PreviewProvider {
    static var previews: some View {
        ResumeOptions(name2: .constant(""), lastName: .constant(""), phoneNumber: .constant(""), email: .constant(""), address: .constant(""))
    }
}
