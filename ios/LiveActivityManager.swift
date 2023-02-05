import Foundation
import ActivityKit


@objc(LiveActivityManager)
class LiveActivityManager: NSObject {

 @objc(addEvent:location:date:)
 func addEvent(_ name: String, location: String, date: NSNumber) -> Void {
   // Date is ready to use!
   print("Hello")
   
   if #available(iOS 16.1, *) {
     if ActivityAuthorizationInfo().areActivitiesEnabled {
       // Create the activity attributes and activity content objects.
       // ...
       
       let startTime : Date = .now;
       let endTime = startTime + 5 * 60;
       let initialContentState = ExampleAttributes.ContentState(value: startTime, endsAt: endTime)
       do {
         let deliveryActivity = try Activity.request(attributes: ExampleAttributes(name: "abc"), contentState: initialContentState)
         print("done")
       } catch (let error) {
         print("Error requesting pizza delivery Live Activity \(error.localizedDescription).")
       }
     }
     
   } else {
     // Fallback on earlier versions
   }
 }
  
  @objc
  func updateTimer(_ value: NSNumber) -> Void {
    
    if #available(iOS 16.1, *) {

//      let state = ExampleAttributes.ContentState(value: Int(value))
//
//          Task {
//            for activity in Activity<ExampleAttributes>.activities {
//              await activity.update(using: state)
//            }
//          }
        }
  }

 @objc
 func constantsToExport() -> [String: Any]! {
   return ["someKey": "someValue"]
 }
}
