//
//  ContentView.swift
//  CW6-2
//
//  Created by Jenan Alibrahim on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var words = ""
    let chooseColor = [Color.cyan , Color.green , Color.mint, Color.red]
    
    var body: some View {
        NavigationView{
            
            VStack{
                Spacer()
                
                Text("اختر اللون")
                    .font(.system(size: 30))
                
                HStack{
                    ForEach(chooseColor, id: \.self)
                    {
                        OneColor in
                        Circle()
                            .foregroundColor(OneColor)
                            .frame(width: 50)
                    }
                }
                
                TextField("اكتب ما تريد !", text: $words)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 20)
                    .padding(20)
                
                NavigationLink(destination: Text(words)){
                    Text("إنشاء")
                        .font(.system(size: 17))
                        .frame(width: 80, height: 30)
                        .background(.gray)
                        .clipShape(Capsule())
                    
                    
                }.navigationTitle("دفتر اليوميات")
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
