//
//  AddInsigntView.swift
//  til
//
//  Created by 조은비 on 2023/07/02.
//

import SwiftUI

struct AddInsightView: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                let placeholder: String = "오늘 얻은 인사이트는 무엇인가요?"
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

struct AddInsightView_Previews: PreviewProvider {
    static var previews: some View {
        AddInsightView()
    }
}
