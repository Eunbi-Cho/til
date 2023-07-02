//
//  ContentView.swift
//  til
//
//  Created by 조은비 on 2023/07/01.
//

import SwiftUI

struct ContentView: View {
    @State var title: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Rectangle()
                        .cornerRadius(20)
                        .frame(height: 240)
                        .ignoresSafeArea()
                        .foregroundColor(.accentColor)
                    BodyView()
                    Spacer()
                }
                VStack {
                    HCalendarView()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                        .padding(.top, 38)
                        .font(.title2)
                    Spacer()
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
