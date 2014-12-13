//
//  AppDelegate.m
//  test
//
//  Created by Glenna Buford on 12/13/14.
//  Copyright (c) 2014 Julie Hollek. All rights reserved.
//

#import "AppDelegate.h"

@interface Movie : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *posterURL;
@property (nonatomic, copy) NSString *synopsis;


@end

@implementation Movie


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Movie *movie = [[Movie alloc] init];
    movie.title = @"Best movie ever";
    movie.posterURL = @"http://best.com";

    Movie *movie2 = [[Movie alloc] init];
    movie2.title = @"scary movie ever";
    movie2.posterURL = @"http://scary.com";
    
    NSArray *movies = @[movie, movie2];
    for (Movie *m in movies){
        NSLog(@"Movie Title: %@", m.title);
    }
    
    BOOL isTrue = YES; // can only be YES or NO, can't call a method on it
    CGFloat x = 10.0;  // CG is core graphics, it's a float
    double d = 10.0;   // more scalar types
    float f = 10.0;
    
    NSNumber *number = [NSNumber numberWithBool: isTrue]; //turn a scalar type into an object
    number = @10.0;    // put an @ sign in front of a thing, it turns it into an object AKA literal notation
    
    NSDictionary *dict =@{
                          @"isUser": @YES,
    };
    
    NSArray *array =@[
        @5,@6,@7
    ];
    
    
    NSDictionary *dict2 =@{
                          @"List": @[
                              @1,@2,@3,]
                          };
    
    
    CGFloat x2 = [array[0] floatValue];
    
    for (NSInteger i = 0; i<array.count; i++){
        NSLog(@"%@", array[i]);
    }
    
    for (NSNumber *num in array){
        NSLog(@"%@",num);
    }
    
    CGFloat tip = [self tipForTotal:100];
    NSLog(@"Float: %f", tip);
    CGFloat total = [self totalForBase:100 andTipPercentage:0.2];
    
    return YES;
}

-(double)tipForTotal:(CGFloat)total {
    return .2*total;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
