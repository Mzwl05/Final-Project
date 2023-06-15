//
//  NoResume.swift
//  Final Project
//
//  Created by Keila Trigo on 14/06/23.
//

import SwiftUI

struct NoResume: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.968627451, green: 0.9607843137, blue: 0.9225329964, alpha: 1))
                .ignoresSafeArea()
            
            ScrollView(.vertical){
                
                HStack{
                    Text("What not to put on your Resume")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                
                Text("Make a good impression at a job interview, with advice on what not to put in your resume, and properly include all of your experiences")
                    .padding([.top],10.0)
                    .padding ([.leading, .trailing],15 )
                    .font(.system(.title3, design: .rounded))
                    
                Spacer(minLength: 30)
                
                Text("Helpful links")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 20)

                Link("Resources from topresume.com", destination: URL(string: "https://www.topresume.com/career-advice/6-things-to-remove-from-your-resume-right-away")!)
                    .padding(.bottom, 5.0)
                    .environment(\.openURL, OpenURLAction { url in
                        print("Open \(url)")
                        return .handled
                        })
                    .tint(Color(red: 0.996, green: 0.373, blue: 0.333))
                    .font(.system(.title2, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Link("Resources from Indeed", destination: URL(string: "https://www.indeed.com/career-advice/resumes-cover-letters/what-not-to-put-on-a-resume")!)
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

struct NoResume_Previews: PreviewProvider {
    static var previews: some View {
        NoResume()
    }
}
