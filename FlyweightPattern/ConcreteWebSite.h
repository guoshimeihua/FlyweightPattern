//
//  ConcreteWebSite.h
//  FlyweightPattern
//
//  Created by Administrator on 15/12/10.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSiteProtocol.h"

@interface ConcreteWebSite : NSObject<WebSiteProtocol>

@property (nonatomic, copy) NSString *webName;
@end
