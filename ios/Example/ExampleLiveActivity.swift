//
//  ExampleLiveActivity.swift
//  Example
//
//  Created by Patrick Arminio on 04/02/2023.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct ExampleAttributes: ActivityAttributes {
  public struct ContentState: Codable, Hashable {
    // Dynamic stateful properties about your activity go here!
    var value: Date
    var endsAt: Date
  }
  
  // Fixed non-changing properties about your activity go here!
  var name: String
}



@available(iOS 16.1, *)
struct ExampleLiveActivity: Widget {
  var body: some WidgetConfiguration {
    ActivityConfiguration(for: ExampleAttributes.self) { context in
      CurrentEvent(endsAt: context.state.endsAt)
        .activityBackgroundTint(Color(red: 1.00, green: 0.67, blue: 0.00))
        .activitySystemActionForegroundColor(Color.black)

    } dynamicIsland: { context in
      DynamicIsland {
        // Expanded UI goes here.  Compose the expanded UI through
        // various regions, like leading/trailing/center/bottom
        DynamicIslandExpandedRegion(.leading) {
          Text("Leading")
        }
        DynamicIslandExpandedRegion(.trailing) {
          Text("Trailing")
        }
        DynamicIslandExpandedRegion(.bottom) {
          let diff =  Date()...context.state.endsAt;
          
          ProgressView(timerInterval: diff)
          // more content
        }
      } compactLeading: {
        let diff = context.state.endsAt.timeIntervalSinceNow;
        
        if (diff > 290) {
          Text(context.state.endsAt, style: .timer).foregroundColor(.red)
        } else {
          Text(context.state.endsAt, style: .timer).foregroundColor(.blue)
        }
        
      } compactTrailing: {
        Text("T")
      } minimal: {
        Text("Min")
      }
      .widgetURL(URL(string: "http://www.apple.com"))
      .keylineTint(Color.red)
    }
  }
}

