//
//  showHA3.swift
//  Final Project
//
//  Created by Keila Trigo on 15/06/23.
//

import SwiftUI

struct showHA3: View {
    
    //  HA 3 variables
        @State var award3: String = ""
        @State var org3: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            VStack{
                
                Text("Honors and awards #3")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                Form{
                    Section(header:Text("Organisation")){
                        TextField("Organisation", text: $org3)
                    }
                    
                    Section(header:Text("Award/Honor")){
                        TextField("Enter Award/Honor", text: $award3)
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

struct showHA3_Previews: PreviewProvider {
    static var previews: some View {
        showHA3()
    }
}
