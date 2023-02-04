
#import "RCTLiveActivityModule.h"
#import <React/RCTLog.h>

@implementation RCTLiveActivityModule

// To export a module named RCTLiveActivityModule
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)name location:(NSString *)location)
{
 RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end
