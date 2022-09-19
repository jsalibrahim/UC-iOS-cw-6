//
//  ContentView.swift
//  CW6-1
//
//  Created by Jenan Alibrahim on 19/09/2022.
//

import SwiftUI

struct StudentsDetails: Identifiable{
    let id = UUID()
    let name : String
    let year : Int
    let age : Int
}

struct ContentView: View {
    
    var  students = [StudentsDetails(name: "Sarah", year: 4, age: 21),
                     StudentsDetails(name: "Ali", year: 3, age: 20),
                     StudentsDetails(name: "Mona", year: 5, age: 22)]
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            Image("id")
                .resizable()
                .scaledToFit()
                .font(.largeTitle)
                .frame(width: 400, height: 200)
            
            List (students){
                student in
                
                VStack{
                    Text("name: \(student.name)")
                        .font(.system(size: 20))
                    Text("year: \(student.year)")
                        .font(.system(size: 20))
                    Text("age: \(student.age)")
                        .font(.system(size: 20))
                }
                
          
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
