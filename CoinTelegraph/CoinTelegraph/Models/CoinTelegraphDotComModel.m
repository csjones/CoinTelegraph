//
//  CoinTelegraphDotComModel.m
//  CoinTelegraph
//
//  Created by Chris on 7/4/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "CoinTelegraphDotComModel.h"

@implementation CoinTelegraphDotComModel

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   NSObject

- ( id )initWithBaseURL:( NSURL* )url
{
    if ( self = [super initWithBaseURL:url] )
    {
        _url = url;
        
        self.responseSerializer = [AFXMLParserResponseSerializer serializer];
        
        self.responseSerializer.acceptableContentTypes = [[NSSet alloc] initWithArray:@[ @"application/rss+xml" ]];
    }
    
    return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   Methods

- ( void )getRssFeed:( NSString* )url success:( void ( ^ )( id file ) )success failure:( void ( ^ )( NSError* error ) )failure
{
    [self GET:url
   parameters:nil
      success:^( AFHTTPRequestOperation* operation, id responseObject ) {
          success( responseObject );
      }
      failure:^( AFHTTPRequestOperation* operation, NSError* error) {
          failure( error );
      }];
}

@end
