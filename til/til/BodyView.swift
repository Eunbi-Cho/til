//
//  BodyView.swift
//  til
//
//  Created by 조은비 on 2023/07/01.
//

import SwiftUI

struct BodyView: View {
    @State var title: String = ""
    
    var body: some View {
            VStack {
                TextField("오늘의 인상 깊은 한 줄", text: $title)
                    .font(.customTitle1())
                    .multilineTextAlignment(.center)
                HStack {
                    Text("잘한 점")
                        .font(.customeTitle2())
                        .foregroundColor(.accentColor)
                    NavigationLink(destination: AddGoodView()) {
                        Image(systemName: "plus")
                            .foregroundColor(.accentColor)
                            .font(.callout)
                    }
                    Spacer()
                    }
                    .padding(.leading, 20)
                    .padding(.top, 30)
                    HStack {
                        Text("개선할 점")
                            .font(.customeTitle2())
                            .foregroundColor(.accentColor)
                        NavigationLink(destination: AddMoreView()) {
                            Image(systemName: "plus")
                                .foregroundColor(.accentColor)
                                .font(.callout)
                        }
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .padding(.top, 40)
                    HStack {
                        Text("인사이트")
                            .font(.customeTitle2())
                            .foregroundColor(.accentColor)
                        NavigationLink(destination: AddInsightView()) {
                            Image(systemName: "plus")
                                .foregroundColor(.accentColor)
                                .font(.callout)
                        }
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .padding(.top, 40)
                    Spacer()
            }
        }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView()
    }
}
