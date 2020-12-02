//
//  ContentView.swift
//  My card
//
//  Created by Elina Mansurova on 2020-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.98, green: 0.69, blue: 0.63)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Ellipse())
                    .overlay(
                        Ellipse().stroke(Color.white, lineWidth: 5)
                    )
                Text("Elina Mansurova")
                    .font(Font.custom("PermanentMarker-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+ 1 234 567 890", imageName: "phone.fill")
                InfoView(text: "ellie.mansurova@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
                    .font(.system(size: 23))
            })
            .padding(.all)
    }
}
