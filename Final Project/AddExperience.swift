//
//  ContentView.swift
//  info
//
//  Created by Keila Trigo on 15/06/23.
//

import SwiftUI

struct AddExperience: View {
//  experience 1 variables
    @State var jobTitle1: String = ""
    @State var jobCompany1: String = ""
    @State var jobDescription1: String = ""
    @State var startDate1: Date = Date()
    @State var endDate1: Date = Date()
//  experience 2 variables
    @State var jobTitle2: String = ""
    @State var jobCompany2: String = ""
    @State var jobDescription2: String = ""
    @State var startDate2: Date = Date()
    @State var endDate2: Date = Date()
//  experience 3 variables
    @State var jobTitle3: String = ""
    @State var jobCompany3: String = ""
    @State var jobDescription3: String = ""
    @State var startDate3: Date = Date()
    @State var endDate3: Date = Date()
//    Arrays
    @State var jobTitle = ["", "", ""]
    @State var jobDescription = ["", "", ""]
    @State var jobCompany = ["", "", ""]
    
    @State var startDate: [Date] = []
    @State var endDate: [Date] = []
    
    @State private var showExperience2 = false
    @State private var showExperience3 = false
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            VStack{
                
                Text("Experience")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Form{
                    Section(header:Text("Job title")){
                        TextField("Job title", text: $jobTitle1)
                    }
                    
                    Section(header:Text("Company")){
                        TextField("Company", text: $jobCompany1)
                    }
//                    DATES
                    Section(header: Text("Dates")) {
                        
                            DatePicker("Start Date", selection: $startDate1, displayedComponents: [.date])
                            DatePicker("End Date", selection: $endDate1, displayedComponents: [.date])
                        
                    }
                    
                    //                    description goes here and use text editor
                    Section(header: Text("Description"),footer: Text("Write a brief description of what your job consisted of")) {
                        TextEditor(text: $jobDescription1)
                            .frame(height: 150)
                    }
                }
 
//                form 2
                Button(action:{
                    showExperience2.toggle()
                    
                }){
                    Text("Add Experience #2")
                        .frame(width: 200,height: 20,alignment: .center)
                        .background(Color(#colorLiteral(red: 0.2, green: 0.2156862745, blue: 0.2705882353, alpha: 0.81)))
                        .cornerRadius(25)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                .sheet(isPresented: $showExperience2){
                    experience2()
                }
//                  form3
                Button(action:{
                    showExperience3.toggle()
                    
                }){
                    Text("Add Experience #3")
                        .frame(width: 200,height: 20,alignment: .center)
                        .background(Color(#colorLiteral(red: 0.2, green: 0.2156862745, blue: 0.2705882353, alpha: 0.81)))
                        .cornerRadius(25)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                .sheet(isPresented: $showExperience3){
                    experience3()
                }
                
                
//                  BUTTON
                
                Button(action:{
                    jobTitle[0] = jobTitle1
                    jobCompany[0] = jobCompany1
                    jobDescription[0] = jobDescription1
                    startDate.append(startDate1)
                    endDate.append(endDate1)
                    
                    jobTitle[1] = jobTitle2
                    jobCompany[1] = jobCompany2
                    jobDescription[1] = jobDescription2
                    startDate.append(startDate2)
                    endDate.append(endDate2)
                    
                    jobTitle[2] = jobTitle3
                    jobCompany[2] = jobCompany3
                    jobDescription[2] = jobDescription3
                    startDate.append(startDate3)
                    endDate.append(endDate3)
                    
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
struct AddExperience_Previews: PreviewProvider {
    static var previews: some View {
        AddExperience()
    }
}


