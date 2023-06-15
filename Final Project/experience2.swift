//
//  experience2.swift
//  info
//
//  Created by Keila Trigo on 15/06/23.
//

import SwiftUI

struct experience2: View {
   
    //  experience 2 variables
        @State var jobTitle2: String = ""
        @State var jobCompany2: String = ""
        @State var jobDescription2: String = ""
        @State var startDate2: Date = Date()
        @State var endDate2: Date = Date()
   

    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            VStack{
                
                Text("Experience #2")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Form{
                    Section(header:Text("Job title")){
                        TextField("Job title", text: $jobTitle2)
                    }
                    
                    Section(header:Text("Company")){
                        TextField("Company", text: $jobCompany2)
                    }
//                    DATES
                    Section(header: Text("Dates")) {
                        
                            DatePicker("Start Date", selection: $startDate2, displayedComponents: [.date])
                            DatePicker("End Date", selection: $endDate2, displayedComponents: [.date])
                        
                    }
                    
                    //                    description goes here and use text editor
                    Section(header: Text("Description"),footer: Text("Write a brief description of what your job consisted of")) {
                        TextEditor(text: $jobDescription2)
                            .frame(height: 150)
                    }
                }
 

                
//                  BUTTON
                
                Button(action:{
                    dismiss()
      
                }){
                    Text("DONE")
                        .frame(width: 300,height: 50,alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9944947362, green: 0.3711119592, blue: 0.3303264976, alpha: 1)))
                        .cornerRadius(25)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                
            }
            .padding()
            
        }
    }
}

struct experience2_Previews: PreviewProvider {
    static var previews: some View {
        experience2()
    }
}
