//
//  ViewController.h
//  Marubatsu
//
//  Created by b0830701 on 13/06/13.
//  Copyright (c) 2013年 b0830701. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Control.h"

@interface ViewController : UIViewController{
    //UIButton *button;
    /*UIButton *pushButton1;
    UIButton *pushButton2;
    UIButton *pushButton3;
    UIButton *pushButton4;
    UIButton *pushButton5;
    UIButton *pushButton6;
    UIButton *pushButton7;
    UIButton *pushButton8;
    UIButton *pushButton9;*/
    UILabel *kekkalbl;
    //UIButton *btn;
    UIButton *btn1;
    UIButton *btn2;
    UIButton *btn3;
    UIButton *btn4;
    UIButton *btn5;
    UIButton *btn6;
    UIButton *btn7;
    UIButton *btn8;
    UIButton *btn9;
    UIButton *reset;

}
//@property (nonatomic, retain) IBOutlet UIButton *button;
/*@property (nonatomic, retain) IBOutlet UIButton *pushButton1;
@property (nonatomic, retain) IBOutlet UIButton *pushButton2;
@property (nonatomic, retain) IBOutlet UIButton *pushButton3;
@property (nonatomic, retain) IBOutlet UIButton *pushButton4;
@property (nonatomic, retain) IBOutlet UIButton *pushButton5;
@property (nonatomic, retain) IBOutlet UIButton *pushButton6;
@property (nonatomic, retain) IBOutlet UIButton *pushButton7;
@property (nonatomic, retain) IBOutlet UIButton *pushButton8;
@property (nonatomic, retain) IBOutlet UIButton *pushButton9;*/
@property (nonatomic, retain) IBOutlet UILabel *kekkalbl;
/*
- (IBAction)MaruBatsuButton1:(id)sender;
- (IBAction)MaruBatsuButton2:(id)sender;
- (IBAction)MaruBatsuButton3:(id)sender;
- (IBAction)MaruBatsuButton4:(id)sender;
- (IBAction)MaruBatsuButton5:(id)sender;
- (IBAction)MaruBatsuButton6:(id)sender;
- (IBAction)MaruBatsuButton7:(id)sender;
- (IBAction)MaruBatsuButton8:(id)sender;
- (IBAction)MaruBatsuButton9:(id)sender;
*/

@property (nonatomic, retain) IBOutlet UIButton *btn;
@property (nonatomic, retain) IBOutlet UIButton *btn1;
@property (nonatomic, retain) IBOutlet UIButton *btn2;
@property (nonatomic, retain) IBOutlet UIButton *btn3;
@property (nonatomic, retain) IBOutlet UIButton *btn4;
@property (nonatomic, retain) IBOutlet UIButton *btn5;
@property (nonatomic, retain) IBOutlet UIButton *btn6;
@property (nonatomic, retain) IBOutlet UIButton *btn7;
@property (nonatomic, retain) IBOutlet UIButton *btn8;
@property (nonatomic, retain) IBOutlet UIButton *btn9;
@property (nonatomic, retain) IBOutlet UIButton *reset;
@property (nonatomic, retain) IBOutlet UIButton *resetbtn;

- (IBAction)BtnPush:(id)sender;
- (IBAction)ResetButton:(id)sender;
- (void)pushed_button;
- (void)init;
- (void)Clear_Check;
- (void)Maru;
- (void)Batsu;
- (void)Reset;

@end
