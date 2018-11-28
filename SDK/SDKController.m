//
//  SDKController.m
//  SDK
//
//  Created by Anil Kumar on 22/11/18.
//  Copyright © 2018 AIT. All rights reserved.
//

#import "SDKController.h"
#import <SDK/SDK-Swift.h>

@interface SDKController ()
{
    
}
@end

@implementation SDKController

+(SDKController*)Controller:(UIViewController*)vc{
    [vc.navigationController setNavigationBarHidden:true];
    NSBundle* bun = [NSBundle bundleWithIdentifier:@"Com.Project.SDK"];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:bun];
    ViewController *newView = [storyboard instantiateViewControllerWithIdentifier:@"Control"];
    [vc.navigationController pushViewController:newView animated:true];
    
    return vc;
}
@end
