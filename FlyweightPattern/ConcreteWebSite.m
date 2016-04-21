//
//  ConcreteWebSite.m
//  FlyweightPattern
//
//  Created by Administrator on 15/12/10.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ConcreteWebSite.h"

@implementation ConcreteWebSite

- (void)use:(User *)user {
    NSLog(@"网站分类:%@ 用户名字:%@", self.webName, user.userName);
}

@end
