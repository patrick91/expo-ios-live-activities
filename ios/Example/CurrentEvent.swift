//
//  RoomView.swift
//  expoiosliveactivities
//
//  Created by Patrick Arminio on 05/02/2023.
//

import SwiftUI

struct CurrentEvent: View {
    @State public var endsAt: Date
    var body: some View {
  
      VStack(spacing: 0) {
        VStack {
          Text("Introduction to Network Analysis by Analyzing Characters in Harry Potter Fanfiction")
            .bold()
          
          if #available(iOS 15.0, *) {
            HStack {
              Text("Sara Jakša")
              Spacer()
              Spacer()
              Text("Time to QA").bold()
              Text(endsAt, style:.timer)
            }
            .background(.purple)
          } else {
            // Fallback on earlier versions
          }

          
//          ProgressView(timerInterval: diff, countsDown: false)
//            .tint(Color.black)
          
        }
//        .padding([.leading, .trailing, .top], 16)
        .frame(
          maxHeight: .infinity,
          alignment: .leading
        )
        VStack(spacing: 0) {
          Text("Next: break")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .padding(.top, 0)
        .background(Color(red: 1.00, green: 0.67, blue: 0.00).frame(
          maxWidth: .infinity, alignment: .leading
        ).brightness(0.1))
      }
    }
}

@available(iOS 16.1, *)
struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentEvent(
          endsAt: Date()
        )
        .activityBackgroundTint(Color(red: 1.00, green: 0.67, blue: 0.00))
        .activitySystemActionForegroundColor(Color.black)
    }
}
