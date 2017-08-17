
#define settingPath @"var/mobile/Library/Preferences/com.cc.runningman.plist"

%hook WCDeviceStepObject

-(unsigned int)m7StepCount {
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingPath];
    BOOL isEnabled = [[prefs objectForKey:@"enabled"] boolValue];
    BOOL addRandom = [[prefs objectForKey:@"random"] boolValue];
    int targetStepCount = [[prefs objectForKey:@"targetStepCount"] intValue];

    int origStepCount = %orig;

    NSLog(@"Update step count: target=%d, orig=%d.", targetStepCount, origStepCount);

    if (isEnabled && (targetStepCount > origStepCount))
    {
        int newStepCount = targetStepCount;
        if (addRandom)
        {
            newStepCount += arc4random()%2000;
        }
        return newStepCount;
    }

    return origStepCount;
}

%end