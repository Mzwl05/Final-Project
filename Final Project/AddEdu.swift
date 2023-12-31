//
//  AddEdu.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/15/23.
//

import SwiftUI

struct AddEdu: View {
    
    //  edu  variables
        @State var schoolName: String = ""
        @State var endorsment: String = ""
        @State var schoolDescription: String = ""
        @State var startDate: Date = Date()
        @State var endDate: Date = Date()
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            VStack{
                
                Text("Education")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Form{
                    Section(header:Text("School name")){
                        TextField("School name", text: $schoolName)
                    }
                    
                    Section(header:Text("Endorsment")){
                        TextField("Endorsment", text: $endorsment)
                    }
//                    DATES
                    Section(header: Text("Dates")) {
                        
                            DatePicker("Start Date", selection: $startDate, displayedComponents: [.date])
                            DatePicker("End Date", selection: $endDate, displayedComponents: [.date])
                        
                    }
                    
                    Section(header: Text("Description"),footer: Text("Input your relevant coursework")) {
                        TextEditor(text: $schoolDescription)
                            .frame(height: 150)
                    }
                }
 


                
                
//                  BUTTON
                
                Button(action:{
                    
                    
                }){
                    Text("Submit")
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

struct AddEdu_Previews: PreviewProvider {
    static var previews: some View {
        AddEdu()
    }
}
