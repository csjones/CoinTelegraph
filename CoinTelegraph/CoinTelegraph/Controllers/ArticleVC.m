//
//  ArticleVC.m
//  CoinTelegraph
//
//  Created by Chris on 7/5/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "ArticleVC.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   ArticleVC Category Interface

@interface ArticleVC ( )

@end

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   ArticleVC Class Implementation

@implementation ArticleVC

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   UIViewController

- ( void )viewWillAppear:( BOOL )animated
{
    [super viewWillAppear:animated];
    
    [_webView loadRequest:_urlRequest];
}

- ( BOOL )prefersStatusBarHidden
{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   UIWebViewDelegate

- ( void )webView:( UIWebView* )webView didFailLoadWithError:( NSError* )error
{
    NSLog(@"Error : %@", error);
}

- ( BOOL )webView:( UIWebView* )webView shouldStartLoadWithRequest:( NSURLRequest* )request navigationType:( UIWebViewNavigationType )navigationType
{
    NSLog(@"shouldStartLoadWithRequest");
    
    return YES;
}

- ( void )webViewDidFinishLoad:( UIWebView* )webView
{
    NSLog(@"webViewDidFinishLoad");
}

@end
