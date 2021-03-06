//
//  CoinTelegraphDotComModel.h
//  CoinTelegraph
//
//  Created by Chris on 7/4/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   CoinTelegraphDotComModel Class Interface

@interface CoinTelegraphDotComModel : AFHTTPRequestOperationManager

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   Properties

@property ( strong, nonatomic ) NSURL* url;

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   Methods

- ( void )getRssFeed:( NSString* )url success:( void ( ^ )( id file ) )success failure:( void ( ^ )( NSError* error ) )failure;

@end
