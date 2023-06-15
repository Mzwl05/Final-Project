//
//  InterviewTips.swift
//  Final Project
//
//  Created by Keila Trigo on 14/06/23.
//

import SwiftUI

struct InterviewTips: View {
   
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                .ignoresSafeArea()
            
            ScrollView(.vertical){
                
                HStack{
                    Text("Interview Tips")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                }
                
                Text("Make a good impression at a job interview, with advice on how to prepare, and how to show what you have to offer.")
                    .padding([.top],10.0)
                    .padding ([.leading, .trailing],15 )
                    .font(.system(.title3, design: .rounded))
                    
                Spacer(minLength: 30)
                
                Text("Helpful links")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 20)

                Link("Resources from dol.gov", destination: URL(string: "https://www.dol.gov/general/jobs/interview-tips")!)
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

struct InterviewTips_Previews: PreviewProvider {
    static var previews: some View {
        InterviewTips()
    }
}
