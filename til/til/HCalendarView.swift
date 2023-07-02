//
//  HCallendarView.swift
//  til
//
//  Created by 조은비 on 2023/07/01.
//

import SwiftUI

struct HCalendarView: View {
  @State private var selectedDate = Date()
  private let calendar = Calendar.current
  
  var body: some View {
    VStack(alignment: .center, spacing: 40) {
      monthView
      ZStack {
        dayView
      }
      .frame(height: 30)
      .padding(.horizontal, 0)
    }
  }
  
  // MARK: - 월 표시 뷰
  private var monthView: some View {
    HStack(spacing: 30) {
      Button(
        action: {
          changeMonth(-1)
        },
        label: {
          Image(systemName: "chevron.left")
            .padding()
        }
      )
      
      Text(monthTitle(from: selectedDate))
        .font(.customeTitle2())
        .foregroundColor(.white)
      
      Button(
        action: {
          changeMonth(1)
        },
        label: {
          Image(systemName: "chevron.right")
            .padding()
        }
      )
    }
  }
  
  // MARK: - 일자 표시 뷰
  @ViewBuilder
  private var dayView: some View {
    let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: selectedDate))!
    
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 4) {
        let components = (
          0..<calendar.range(of: .day, in: .month, for: startDate)!.count)
          .map {
            calendar.date(byAdding: .day, value: $0, to: startDate)!
          }
        
        ForEach(components, id: \.self) { date in
          VStack {
            Text(day(from: date))
              .font(.dayFont())
              .foregroundColor(.white.opacity(0.6))
            Text("\(calendar.component(.day, from: date))")
                  .font(.dateFont())
                  .frame(width: 60, height: 60)
                  .padding(4)
                  .background(calendar.isDate(selectedDate, equalTo: date, toGranularity: .day) ? Color.white.opacity(0.2) : Color.clear)
                  .cornerRadius(50)
                  .foregroundColor(calendar.isDate(selectedDate, equalTo: date, toGranularity: .day) ? .white : .white)
                  .onTapGesture {
                    selectedDate = date
                  }
          }
        }
      }
    }
  }
  
  // MARK: - 블러 뷰
  private var blurView: some View {
    HStack {
      LinearGradient(
        gradient: Gradient(
          colors: [
            Color.white.opacity(1),
            Color.white.opacity(0)
          ]
        ),
        startPoint: .leading,
        endPoint: .trailing
      )
      .frame(width: 20)
      .edgesIgnoringSafeArea(.leading)
      
      Spacer()
      
      LinearGradient(
        gradient: Gradient(
          colors: [
            Color.white.opacity(1),
            Color.white.opacity(0)
          ]
        ),
        startPoint: .trailing,
        endPoint: .leading
      )
      .frame(width: 20)
      .edgesIgnoringSafeArea(.leading)
    }
  }
}

// MARK: - 로직
private extension HCalendarView {
  /// 월 표시
  func monthTitle(from date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.setLocalizedDateFormatFromTemplate("MMMM")
    return dateFormatter.string(from: date)
  }
  
  /// 월 변경
  func changeMonth(_ value: Int) {
    guard let date = calendar.date(
      byAdding: .month,
      value: value,
      to: selectedDate
    ) else {
      return
    }
    
    selectedDate = date
  }
  
  /// 요일 추출
  func day(from date: Date) -> String {
    let dateFormatter = DateFormatter()
      dateFormatter.setLocalizedDateFormatFromTemplate("EEEEE")
      return dateFormatter.string(from: date)
  }
}
