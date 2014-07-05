//
//  NSDictionary+FeedItem.m
//  CoinTelegraph
//
//  Created by Chris on 7/5/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "NSDictionary+FeedItem.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   NSDictionary+FeedItem Category Implementation

@implementation NSDictionary ( FeedItem )

- ( NSArray* )feedItems
{
    return self[ @"channel" ][ @"item" ];
}

- ( NSString* )feedItemTitle
{
    return self[ @"title" ];
}

- ( NSURL* )urlForFeedItemLink
{
    return [[NSURL alloc] initWithString:self[ @"link" ]];
}

- ( NSString* )feedItemImageUrlForWidth:( NSUInteger )width
{
// "http://cointelegraph.com/images/528_aHR0cDovL2NvaW50ZWxlZ3JhcGguY29tL3N0b3JhZ2UvdXBsb2Fkcy92aWV3L2NmYjZhZTgwNGE5NTE0ODUxNzQ0M2FkNDMxOTdlMTljLnBuZw==.jpg";
    
    __weak NSString* weakOriginal = self[ @"dc:temporal" ];
    
    return [[NSString alloc] initWithFormat:@"http://cointelegraph.com/images/%li_%@", (unsigned long)width, [weakOriginal componentsSeparatedByString:@"_"][ 1 ] ];
}

@end
