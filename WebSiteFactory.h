//
//  WebSiteFactory.h
//  FlyweightPattern
//
//  Created by Administrator on 15/12/10.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSiteProtocol.h"

@interface WebSiteFactory : NSObject

@property (nonatomic, strong) NSDictionary *flyweights; //共享对象

- (id<WebSiteProtocol>)getWebSiteCategory:(NSString *)webKey;
- (NSInteger)getWebSiteCount;

@end
