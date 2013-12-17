//
//  AppDelegate.h
//  SB1 Simulator
//
//  Created by Joshua Barrow on 12/11/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainWindowController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

/**
 *  Main Window Controller
 */
@property (strong, nonatomic) MainWindowController *mainWindowController;

/**
 *  If the app isn't open when the user attemps to open a file, the file url must be stored until application:openFile: can be called.
 */
@property (strong, nonatomic) NSURL *fileToOpen;

/**
 *  Menu item action for opening a URL.
 *
 *  @param sender The caller of this method.
 */
-(IBAction)openURL:(id)sender;

/**
 *  Menu item action for refreshing the mainWindowController's mainWebView
 *
 *  @param sender The caller of this method.
 */
-(IBAction)refreshWebView:(id)sender;

@end
