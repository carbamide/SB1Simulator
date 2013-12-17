//
//  MainWindowController.h
//  SB1 Simulator
//
//  Created by Joshua Barrow on 12/11/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

/**
 *  MainWindowController - this is the main window.  Handles all functions of the application.
 */
@interface MainWindowController : NSWindowController

/**
 *  Main web view of the application that shows the SB1 package contents.
 */
@property (strong) IBOutlet WebView *mainWebView;

/**
 *  Open the specified URL in mainWebView
 *
 *  @param url The url to open in mainWebView
 */
-(void)openURL:(NSURL *)url;

/**
 *  Refresh mainWebView
 */
-(void)refreshWebView;

@end
