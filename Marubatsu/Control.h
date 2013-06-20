//
//  Main.h
//  Marubatsu
//
//  Created by b0830701 on 13/06/13.
//  Copyright (c) 2013年 b0830701. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface Control : NSObject{
    UIButton *button;
}
@property (nonatomic, retain) IBOutlet UIButton *button;

- (void)Turn;
- (void)Maru;
- (void)Batsu;

@end
