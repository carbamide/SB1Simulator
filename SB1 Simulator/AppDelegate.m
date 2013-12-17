//
//  AppDelegate.m
//  SB1 Simulator
//
//  Created by Joshua Barrow on 12/11/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [[NSUserDefaults standardUserDefaults] registerDefaults:@{@"WebKitDeveloperExtras": @YES}];
    
    [self setMainWindowController:[[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"]];
    [[[self mainWindowController] window] makeKeyAndOrderFront:self];
    
    if ([self fileToOpen]) {
        [[self mainWindowController] openURL:[self fileToOpen]];
    }
}

-(BOOL)application:(NSApplication *)sender openFile:(NSString *)filename
{
    if ([self mainWindowController]) {
        [[self mainWindowController] openURL:[NSURL URLWithString:filename]];
    }
    else {
        [self setFileToOpen:[NSURL URLWithString:filename]];
    }
    
    return YES;
}

-(IBAction)openURL:(id)sender
{
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    
    [openPanel setCanChooseFiles:YES];
    [openPanel setCanChooseDirectories:NO];
    [openPanel setAllowsMultipleSelection:NO];
    [openPanel setAllowedFileTypes:@[@"html"]];
    
    [openPanel beginWithCompletionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            [[self mainWindowController] openURL:[openPanel URL]];
        }
    }];
}

-(IBAction)refreshWebView:(id)sender
{
    [[self mainWindowController] refreshWebView];
}

@end
