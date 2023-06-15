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
                    .padding([.top, .leading, .trailing], 12.0)
                    .font(.system(.title3, design: .rounded))
                    
                Spacer(minLength: 30)
                
                Text("Preparing for the interview")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                
                Text("•     Research the position and organization (e.g., mission, goals, etc.) prior to the interview. Familiarize yourself with the duties, responsibilities and requirements of the position. Don’t assume you know everything about the organization even if you have experience with the organization. Always do your research.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 25)
                
                Text("•     Review your application and resume, and be prepared to support past accomplishments with specific information targeted towards the position requirements. Be sure that you focus on your paid and non-paid experience. Don’t assume the interviewer knows everything about you.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 25.0)
                    
                Text("•    Practice interviewing. Take the time to research and review typical interview questions to help give you a framework for your responses.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 25)
                Text("•     Be flexible with scheduling and allow sufficient time for the interview. Be sure to ask for specifics regarding the time, location, point of contact (POC) as well as any other logistical details.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 25)
                Text("•   Ask whether there will be one or multiple interviewers.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 25)
                
            }
        
        }
    }
}

struct InterviewTips_Previews: PreviewProvider {
    static var previews: some View {
        InterviewTips()
    }
}
