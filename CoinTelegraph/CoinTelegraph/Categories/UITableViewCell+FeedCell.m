//
//  UITableViewCell+FeedCell.m
//  CoinTelegraph
//
//  Created by Chris on 7/5/14.
//  Copyright (c) 2014 GigaBitcoin, LLC. All rights reserved.
//

#import "UIImageView+AFNetworking.h"
#import "UITableViewCell+FeedCell.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark    -   UITableViewCell+FeedCell Category Implementation

@implementation UITableViewCell ( FeedCell )

- ( void )setImageWithUrl:( NSURL* )url
{
    __weak UIImageView* weakImage = ( UIImageView* )[self.contentView viewWithTag:1];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request addValue:@"image/*" forHTTPHeaderField:@"Accept"];
    
    weakImage.image = nil;
    
//    __weak UITableViewCell* weakCell = self;
    
    [weakImage setImageWithURLRequest:request
                     placeholderImage:nil
                              success:^( NSURLRequest* request, NSHTTPURLResponse* response, UIImage* image) {
                                  weakImage.image = image;
                              }
                              failure:nil];
}

- ( void )setLabelWithString:( NSString* )string
{
    __weak UILabel* weakLabel = ( UILabel* )[self.contentView viewWithTag:2];
    
    weakLabel.text = string;
}

@end
