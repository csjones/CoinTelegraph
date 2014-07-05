//
//  RssFeedVC.m
//  CoinTelegraph
//
//  Created by Chris on 7/4/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "RssFeedVC.h"

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
        _tableModel = [[RssFeedModel alloc] init];
    }
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
