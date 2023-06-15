//
//  ResumeBuilding.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/15/23.
//

import SwiftUI

struct ResumeBuilding: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                    .ignoresSafeArea()
                VStack{
                    Text("Input your information")
                        .font(.system(.largeTitle, design: .rounded))
                        .tint(Color(red: 199/255, green: 239/255, blue: 207/255))
                    
                    NavigationLink(destination: AddEdu()
                    ) {
                        HStack{
                            VStack(alignment: .leading){
                                Text("Education")
                                    .font(.system(.largeTitle, design: .rounded))
                                    .multilineTextAlignment(.leading)
                                Text("Add Education")
                                    .font(.system(.title2, design: .rounded))
                                    .multilineTextAlignment(.leading)
                            }
                            Spacer()
                            Image(systemName: "chevron.forward")
                            
                        }
                        
                    }
                    .padding(.horizontal, 20.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(.white))
                    .foregroundColor(Color(red: 51/255, green: 55/255, blue: 69/255))
                    
                    
                    
                    NavigationLink(destination: AddExperience()
                    ) {
                        HStack{
                            VStack(alignment: .leading){
                                Text("Experience")
                                    .font(.system(.largeTitle, design: .rounded))
                                    .multilineTextAlignment(.leading)
                                Text("Add Experience")
                                    .font(.system(.title2, design: .rounded))
                                    .multilineTextAlignment(.leading)
                            }
                            Spacer()
                            Image(systemName: "chevron.forward")
                        }
                        
                    }
                    .padding(.horizontal, 20.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(.white))
                    .foregroundColor(Color(red: 51/255, green: 55/255, blue: 69/255))
                    
                    
                    NavigationLink(destination: AddHandA()
                    ) {
                        HStack{
                            VStack(alignment: .leading){
                                Text("Honors and Awards")
                                    .font(.system(.title, design: .rounded))
                                Text("Add Honors and Awards")
                                    .font(.system(.title2, design: .rounded))
                            }
                            Spacer()
                            Image(systemName: "chevron.forward")
                        }
                        
                    }
                    .padding(.horizontal, 20.0)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(.white))
                    .foregroundColor(Color(red: 51/255, green: 55/255, blue: 69/255))
                    
                    
                    NavigationLink(destination: Resume()
                                   //
                    ) {
                        Text("Enter now")
                            .font(.title)
                    }
                    .padding(.top)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 199/255, green: 239/255, blue: 207/255))
                    .foregroundColor(Color(red: 51/255, green: 55/255, blue: 69/255))
                }
            }
        }
        }
}

struct ResumeBuilding_Previews: PreviewProvider {
    static var previews: some View {
        ResumeBuilding()
    }
}
