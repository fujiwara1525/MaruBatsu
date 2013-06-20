//
//  Main.m
//  Marubatsu
//
//  Created by b0830701 on 13/06/13.
//  Copyright (c) 2013年 b0830701. All rights reserved.
//

#import "Control.h"
#import "ViewController.h"

//#define Player 1

@implementation Control

@synthesize button;

int i = 1;

- (void)dealloc{
    [button release];
    [super dealloc];
}

- (void)Turn
{
    if(i == 1){
        //@"○";
        [self Maru];
    }else{
        //@"×";
        [self Batu];
    }
    i = 1 - i;
}

- (void)Maru{
    [button setTitle:@"○" forState:UIControlStateNormal];
    NSLog(@"○");
}

- (void)Batu{
    [button setTitle:@"×" forState:UIControlStateNormal];
    NSLog(@"×");
}



@end
