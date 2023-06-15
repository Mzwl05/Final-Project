//
//  TechInterview.swift
//  Final Project
//
//  Created by Keila Trigo on 14/06/23.
//

import SwiftUI

struct TechInterview: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                .ignoresSafeArea()
            
            ScrollView(.vertical){
                
                HStack{
                    Text("How to Prepare for a Tech Interview")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                
                Text("Make a good impression at a tech interview, with advice on how to prepare, and what questions to ask.")
                    .padding([.top],10.0)
                    .padding ([.leading, .trailing],15 )
                    .font(.system(.title3, design: .rounded))
                    
                Spacer(minLength: 30)
                
                Text("Helpful links")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 20)

                Link("Resources from interviewguide.dev", destination: URL(string: "https://interviewguide.dev")!)
                    .padding(.bottom, 5.0)
                    .environment(\.openURL, OpenURLAction { url in
                        print("Open \(url)")
                        return .handled
                        })
                    .tint(Color(red: 0.996, green: 0.373, blue: 0.333))
                    .font(.system(.title2, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Link("Resources from nationalcareers.service.gov", destination: URL(string: "https://nationalcareers.service.gov.uk/careers-advice/interview-advice/interview-advice")!)
                    .environment(\.openURL, OpenURLAction { url in
                        print("Open \(url)")
                        return .handled
                        })
                    .tint(Color(red: 0.996, green: 0.373, blue: 0.333))
                    .font(.system(.title2, design: .rounded))
            }
        
        }
    }
}

struct TechInterview_Previews: PreviewProvider {
    static var previews: some View {
        TechInterview()
    }
}
