//
//  AddHandA.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/15/23.
//

import SwiftUI

struct AddHandA: View {
    
    //  HA 1 variables
        @State var award1: String = ""
        @State var org1: String = ""
       
        
    //  HA 2 variables
        @State var award2: String = ""
        @State var org2: String = ""
   
      
    //  HA 3 variables
        @State var award3: String = ""
        @State var org3: String = ""
    
       
    //   HA  Arrays
        @State var award = ["", "", ""]
        @State var organization = ["", "", ""]
      
     
        
        @State private var showHA2 = false
        @State private var showHA3 = false
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            VStack{
                
                Text("Honors and awards")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Form{
                    Section(header:Text("Organisation")){
                        TextField("Organisation", text: $org1)
                    }
                    
                    Section(header:Text("Award/Honor")){
                        TextField("Enter Award/Honor", text: $award1)
                    }

                
                }
 
//             HA   form 2
                Button(action:{
                    showHA2.toggle()
                    
                }){
                    Text("Add Experience #2")
                        .frame(width: 200,height: 20,alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9944947362, green: 0.3711119592, blue: 0.3303264976, alpha: 1)))
                        .cornerRadius(25)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                .sheet(isPresented: $showHA2){
                    Final_Project.showHA2()
                }
//              HA    form3
                Button(action:{
                    showHA3.toggle()
                    
                }){
                    Text("Add Experience #3")
                        .frame(width: 200,height: 20,alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9944947362, green: 0.3711119592, blue: 0.3303264976, alpha: 1)))
                        .cornerRadius(25)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                .sheet(isPresented: $showHA3){
                    Final_Project.showHA3()
                }
                
                
//                  BUTTON
                
                Button(action:{
                    award[0] = award1
                    organization[0] = org1
                    
                    award[1] = award2
                    organization[1] = org2
                    
                    award[2] = award3
                    organization[2] = org3
                 
                    
                    
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

struct AddHandA_Previews: PreviewProvider {
    static var previews: some View {
        AddHandA()
    }
}
