//
//  Resume.swift
//  Final Project
//


import SwiftUI

struct Resume: View {
    @Binding var name2: String
    @Binding var lastName: String
    @Binding var phoneNumber: String
    @Binding var email: String
    @Binding var address: String


    var body: some View {
            VStack(alignment: .leading) {
                Text("\(name2) \(lastName)")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 8)
               
                Text("\(phoneNumber), \(email), \(address)")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 16)
               
                Divider()
               
                VStack(alignment: .leading) {
                    Text("Experience")
                        .font(.title)
                        .padding(.bottom, 8)
                   
                    Text("Company")
                        .font(.headline)
                        .bold()
                        .padding(.bottom, 4)
                   
                    Text("Job Title")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 8)
                   
                    Text("• Developed and maintained mobile applications using Swift and SwiftUI.")
                    Text("• Collaborated with cross-functional teams to deliver high-quality software.")
                    Text("• Led code reviews and provided technical guidance to junior developers.")
                }
                .padding(.vertical, 16)
               
                Divider()
               
                VStack(alignment: .leading) {
                    Text("Education")
                        .font(.title)
                        .padding(.bottom, 8)
                   
                    Text("University XYZ")
                        .font(.headline)
                        .bold()
                        .padding(.bottom, 4)
                   
                    Text("Bachelor of Science in Computer Science")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 8)
                   
                    Text("• Relevant coursework: Algorithms, Data Structures, Software Engineering.")
                    Text("• Graduated with honors.")
                }
                .padding(.vertical, 16)
               
                Divider()
               
                VStack(alignment: .leading) {
                    Text("Honors and Awards")
                        .font(.title)
                        .padding(.bottom, 8)
                   
                    Text("Company A")
                        .font(.headline)
                        .bold()
                        .padding(.bottom, 4)
                   
                    Text("Job Title")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 8)
                   
                    Text("• Developed and maintained mobile applications using Swift and SwiftUI.")
                    Text("• Collaborated with cross-functional teams to deliver high-quality software.")
                    Text("• Led code reviews and provided technical guidance to junior developers.")
                }
                .padding(.vertical, 16)
            }
            .padding()
       
       
       
       
        }

}

struct Resume_Previews: PreviewProvider {
    static var previews: some View {
        Resume(name2: .constant(""), lastName: .constant(""), phoneNumber: .constant(""), email: .constant(""), address: .constant(""))
    }
}
