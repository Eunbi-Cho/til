//
//  AddMoreView.swift
//  til
//
//  Created by 조은비 on 2023/07/02.
//

import SwiftUI

struct AddMoreView: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                let placeholder: String = "나는 앞으로 무엇을 개선해야 할까요?"
                TextEditor(text: $text)
                    .padding()
                    .foregroundColor(Color.black)
                    .font(.bodyFont())
                    .lineSpacing(5)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                if text.isEmpty {
                    Text(placeholder)
                        .font(.bodyFont())
                        .foregroundColor(.black .opacity(0.4))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 26)
                        .padding(.leading, 20)
                }
            }
        }
    }
}

struct AddMoreView_Previews: PreviewProvider {
    static var previews: some View {
        AddMoreView()
    }
}
