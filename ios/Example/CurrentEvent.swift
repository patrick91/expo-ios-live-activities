//
//  RoomView.swift
//  expoiosliveactivities
//
//  Created by Patrick Arminio on 05/02/2023.
//

import SwiftUI


@available(iOS 16.0, *)
struct CurrentEvent: View {
    @State public var endsAt: Date
  
  var body: some View {
    let diff =  Date()...endsAt;
      VStack(spacing: 0) {
        VStack(alignment: .leading, spacing: 0) {
          Text("Introduction to Network Analysis by Analyzing Characters in Harry Potter Fanfiction")
            .bold()

          ProgressView(timerInterval: diff, countsDown: false){
               
            } currentValueLabel: {
              HStack {
                Text("Time to QA:").bold()
                Text(endsAt, style:.timer)
                Spacer()
                Text("Sara Jakša")
              }
          }
            .tint(Color.black)
            .padding([.top, .bottom], 8)
          
        }
        .padding([.leading, .trailing, .top], 16)
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
        
      }.foregroundColor(.black)
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
