//
//  CoinTelegraphDotComModel.h
//  CoinTelegraph
//
//  Created by Chris on 7/4/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface CoinTelegraphDotComModel : AFHTTPRequestOperationManager

@property ( strong, nonatomic ) NSURL* url;

@end
