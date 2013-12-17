//
//  WebInspector.h
//  SB1 Simulator
//
//  Created by Joshua Barrow on 12/17/13.
//  Copyright (c) 2013 Jukaela Enterprises. All rights reserved.
//

/**
 *  Private methods for WebInspector.  This class is not AppStore safe.
 */
@interface WebInspector : NSObject {
    WebView *_webView;
}

/**
 *  Initialize a new WebInspector with the specified WebView.
 *
 *  @param webView The WebView to initialize the WebInspector with.
 *
 *  @return An allocated an initialized WebInspector.
 */
- (id)initWithWebView:(WebView *)webView;

/**
 *  Fork the WebInspector to provide information about the WebView.
 *
 *  @param sender The WebView that the WebInspector was initialized with.
 */
- (void)detach:(id)sender;

/**
 *  Show the console of the WebInspector.
 *
 *  @param sender The caller of this method.
 */
- (void)showConsole:(id)sender;

@end
