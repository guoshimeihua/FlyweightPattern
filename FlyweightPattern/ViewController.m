//
//  ViewController.m
//  FlyweightPattern
//
//  Created by Bruce on 15/9/12.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ViewController.h"
#import "WebSiteProtocol.h"
#import "WebSiteFactory.h"
#import "ConcreteWebSite.h"
#import "User.h"

typedef id<WebSiteProtocol> WebsiteType;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 通过工厂方法返回各种具体享元对象,维护池中的享元对象
    WebSiteFactory *factory = [[WebSiteFactory alloc] init];
    
    // 返回具体的享元对象
    WebsiteType type1 = [factory getWebSiteCategory:@"首页"];
    User *user1 = [[User alloc] init];
    user1.userName = @"张三";
    // 享元对象都具有use方法
    [type1 use:user1];
    
    WebsiteType type2 = [factory getWebSiteCategory:@"商店"];
    User *user2 = [[User alloc] init];
    user2.userName = @"李四";
    [type2 use:user2];
    
    WebsiteType type3 = [factory getWebSiteCategory:@"案例"];
    User *user3 = [[User alloc] init];
    user3.userName = @"王五";
    [type3 use:user3];
    
    NSInteger count = [factory getWebSiteCount];
    NSLog(@"个数: %ld", (long)count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
