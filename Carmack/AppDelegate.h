//
//  AppDelegate.h
//  Carmack
//
//  Created by Nabeel Qureshi on 30/10/2014.
//  Copyright (c) 2014 Nabeel Qureshi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (IBAction)start:(id)sender;
- (IBAction)reset:(id)sender;

@property (weak) IBOutlet NSTextField *timeField;
@property (weak) IBOutlet NSButton *startButton;
@property (weak) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusBar;
@property (weak) IBOutlet NSMenuItem *workingMenu;

- (void)ticktock:(id)sender;

@end

