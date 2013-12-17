//
//  MainWindowController.m
//  SB1 Simulator
//
//  Created by Joshua Barrow on 12/11/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

#import "MainWindowController.h"
#import "WebInspector.h"

/**
 *  MainWindowController private methods and properties
 */
@interface MainWindowController ()
/**
 *  Private property for holding a reference to the WebInspector.  This is done so that we
 *  can open the webInspector programmatically.
 */
@property (strong, nonatomic) WebInspector *webInspector;
@end

@implementation MainWindowController

#pragma mark - 
#pragma mark Window Lifecycle

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    [[self mainWebView] setFrameLoadDelegate:self];
}

#pragma mark -
#pragma mark Methods

-(void)openURL:(NSURL *)url
{    
    [[[self mainWebView] mainFrame] loadRequest:[NSURLRequest requestWithURL:url]];
}

-(void)refreshWebView
{
    [[[self mainWebView] mainFrame] reloadFromOrigin];
}

#pragma mark -
#pragma mark - WebFrameLoadDelegate

-(void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{
    if (![self webInspector]) {
        [self setWebInspector:[[WebInspector alloc] initWithWebView:[self mainWebView]]];
        
        [[self webInspector] detach:[self mainWebView]];
        [[self webInspector] showConsole:[self mainWebView]];
    }
}

@end
