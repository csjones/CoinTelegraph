//
//  RssFeedModel.m
//  CoinTelegraph
//
//  Created by Chris on 7/5/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "RssFeedModel.h"
#import "NSDictionary+FeedItem.h"
#import "UITableViewCell+FeedCell.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   RssFeedModel Category Interface

@interface RssFeedModel ( )

@end

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   RssFeedModel Class Implementation

@implementation RssFeedModel

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   Methods

- ( id )initWithFeedItems:( NSArray* )feedItems
{
    if ( self = [super init] )
    {
        _feedItems = feedItems;
        
//        NSLog(@"_feedItems %@", _feedItems );
    }
    
    return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   UITableViewDataSource

- ( NSInteger )numberOfSectionsInTableView:( UITableView* )tableView
{
    return 1;
}

- ( NSInteger )tableView:( UITableView* )tableView numberOfRowsInSection:( NSInteger )section
{
    return _feedItems.count;
}

- ( UITableViewCell* )tableView:( UITableView* )tableView cellForRowAtIndexPath:( NSIndexPath* )indexPath
{
    static NSString* CellIdentifier = @"FeedCell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    [cell setLabelWithString:[_feedItems[ indexPath.row ] feedItemTitle]];
    
    [cell setImageWithUrl:[[NSURL alloc] initWithString:[_feedItems[ indexPath.row ] feedItemImageUrlForWidth:[UIScreen mainScreen].scale * 320] ]];

    return cell;

}

@end
