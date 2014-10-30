//
//  AppDelegate.m
//  Carmack
//
//  Created by Nabeel Qureshi on 30/10/2014.
//  Copyright (c) 2014 Nabeel Qureshi. All rights reserved.
//

#import "AppDelegate.h"

int second=0;
int minute=0;
int hour=0;
BOOL running=FALSE;

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)start:(id)sender {
    NSLog(@"received a start: message");
    if(running==TRUE) {
        [_startButton setTitle:@"I'm working"];
        running=FALSE;
    }
    else {
        [_startButton setTitle:@"I'm not working now"];
        running=TRUE;
        [self ticktock:nil];
    }
}

- (IBAction)reset:(id)sender {
    NSLog(@"received a reset: message");
    second=0;
    minute=0;
    hour=0;
    [_timeField setStringValue:@"00:00:00"];
}

- (void)ticktock:(id)sender {
    if(running==TRUE) {
        NSString *sec=[NSString stringWithFormat:@"%i", second];
        if(second<10){
            sec=[NSString stringWithFormat:@"0%i", second];
        }
        NSString *min=[NSString stringWithFormat:@"%i", minute];
        if(minute<10){
            min=[NSString stringWithFormat:@"0%i", minute];
        }
        NSString *hou=[NSString stringWithFormat:@"%i", hour];
        if(hour<10){
            hou=[NSString stringWithFormat:@"0%i", hour];
        }
        NSString *time=[NSString stringWithFormat:@"%@:%@:%@",hou,min,sec];
        [_timeField setStringValue:time];
        [self performSelector:@selector(ticktock:) withObject:nil afterDelay:1.0];
        second+=1;
        if(second>59){
            second=0;
            minute+=1;
        }
        if(minute>50){
            minute=0;
            hour+=1;
        }
    }
}

@end
