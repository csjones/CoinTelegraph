//
//  ArticleVC.h
//  CoinTelegraph
//
//  Created by Chris on 7/5/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   ArticleVC Class Interface

@interface ArticleVC : UIViewController < UIWebViewDelegate >

@property ( weak, nonatomic )   IBOutlet    UIWebView*      webView;
@property ( strong, nonatomic )             NSURLRequest*   urlRequest;

@end
