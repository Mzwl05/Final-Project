//
//  EmailTips.swift
//  Final Project
//
//  Created by Keila Trigo on 14/06/23.
//

import SwiftUI

struct EmailTips: View {
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                .ignoresSafeArea()
            
            ScrollView(.vertical){
                
                HStack{
                    Text("Follow up email")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                
                Text("After a job interview, it's only natural to want an update on the hiring process, particularly if you feel it went well. However, there are several potential pitfalls to avoid when sending a follow-up email after the interview.")
                    .padding([.top],10.0)
                    .padding ([.leading, .trailing],15 )
                    .font(.system(.title3, design: .rounded))
                    
                Spacer(minLength: 30)
                
                Text("Helpful links")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 20)

                Link("Resources from michaelpage.co.uk", destination: URL(string: "https://www.michaelpage.co.uk/advice/career-advice/job-interview-tips/how-send-engaging-follow-email-after-your-interview")!)
                    .padding(.bottom, 5.0)
                    .environment(\.openURL, OpenURLAction { url in
                        print("Open \(url)")
                        return .handled
                        })
                    .tint(Color(red: 0.996, green: 0.373, blue: 0.333))
                    .font(.system(.title2, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Link("Resources from liveagent.com", destination: URL(string: "https://www.liveagent.com/templates/follow-up-email-after-interview-templates/")!)
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

struct EmailTips_Previews: PreviewProvider {
    static var previews: some View {
        EmailTips()
    }
}
