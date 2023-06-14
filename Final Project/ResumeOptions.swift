//
//  ResumeOptions.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/14/23.
//

import SwiftUI

struct ResumeOptions: View {
    var body: some View {
        VStack {
          Text("What is this resume for?")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
                .padding(/*@START_MENU_TOKEN@*/.horizontal, 8.0/*@END_MENU_TOKEN@*/)
                .tint(Color(red: 51/255, green: 55/255, blue: 69/255))
                .padding(.bottom, 50)
          HStack {
            Button(action: {
              // Handle SCHOOL button action
            }) {
              VStack {
                Image(systemName: "graduationcap")
                      .resizable()
                      .frame(width: 70, height: 70)
                Text("SCHOOL")
                  .font(.title2)
              }
            }
            .padding()
            Button(action: {
              // Handle JOB button action
            }) {
              VStack {
                Image(systemName: "briefcase")
                      .resizable()
                      .frame(width: 60, height: 60)
                Text("JOB")
                      .font(.title2)
              }
            }
            .padding()
          }
          Button(action: {
            // Handle OTHER button action
          }) {
            VStack {
              Image(systemName: "ellipsis")
                    .resizable()
                    .frame(width: 60, height: 12)
              Text("OTHER")
                    .font(.title2)
            }
          }
          .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
      }
    
    }

struct ResumeOptions_Previews: PreviewProvider {
    static var previews: some View {
        ResumeOptions()
    }
}
