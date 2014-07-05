//
//  RssFeedVC.h
//  CoinTelegraph
//
//  Created by Chris on 7/4/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "RssFeedModel.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   RssFeedVC Class Interface

@interface RssFeedVC : UIViewController < UITableViewDelegate >

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   Properties

@property ( weak, nonatomic )   IBOutlet    UITableView*    tableView;
@property ( strong, nonatomic)              RssFeedModel*   tableModel;

@end
