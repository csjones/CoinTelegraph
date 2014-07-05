//
//  NSDictionary+FeedItem.h
//  CoinTelegraph
//
//  Created by Chris on 7/5/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   NSDictionary+FeedItem Category Interface

@interface NSDictionary ( FeedItem )

- ( NSArray* )feedItems;

- ( NSString* )feedItemTitle;

- ( NSString* )feedItemImageUrlForWidth:( NSUInteger )width;

@end
