//
//  RssFeedVC.m
//  CoinTelegraph
//
//  Created by Chris on 7/4/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "RssFeedVC.h"
#import "XMLDictionary.h"
#import "NSDictionary+FeedItem.h"
#import "CoinTelegraphDotComModel.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   RssFeedVC Category Interface

@interface RssFeedVC ( )

@end

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   RssFeedVC Class Implementation

@implementation RssFeedVC

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   UIViewController

- ( id )initWithCoder:( NSCoder* )aDecoder
{
    if ( self = [super initWithCoder:aDecoder] )
    {
        __weak RssFeedVC* weakSelf = self;
        
        CoinTelegraphDotComModel* sourceModel = [[CoinTelegraphDotComModel alloc] initWithBaseURL:[NSURL URLWithString:@"http://cointelegraph.com/"]];
        
        [sourceModel getRssFeed:@"rss"
                        success:^( id file ) {
                            weakSelf.tableModel = [[RssFeedModel alloc] initWithFeedItems:[[NSDictionary dictionaryWithXMLParser:file] feedItems]];
                            
                            weakSelf.tableView.dataSource = weakSelf.tableModel;
                            
                            [weakSelf.tableView reloadData];
                            
                            [UIView animateWithDuration:1
                                             animations:^{
                                                 weakSelf.splashView.alpha = .0;
                                             }
                                             completion:^( BOOL finished ) {
                                                 [weakSelf.splashView removeFromSuperview];
                                             }];
                        }
                        failure:^( NSError* error ) {
                            NSLog(@"error %@", error);
                        }];
    }
    
    return self;
}

- ( BOOL )prefersStatusBarHidden
{
    return YES;
}

- ( void )didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    NSLog(@"RssFeedVC::didReceiveMemoryWarning");
}

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   UITableViewDelegate

- ( void )tableView:( UITableView* )tableView didSelectRowAtIndexPath:( NSIndexPath* )indexPath
{
    
}

@end
