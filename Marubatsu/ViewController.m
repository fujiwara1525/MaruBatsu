//
//  ViewController.m
//  Marubatsu
//
//  Created by b0830701 on 13/06/13.
//  Copyright (c) 2013年 b0830701. All rights reserved.
//

#import "ViewController.h"


@interface ViewController (){
    Control *control;
    int i;
    int result[10];
}
@end

@implementation ViewController

@synthesize btn;
@synthesize btn1;
@synthesize btn2;
@synthesize btn3;
@synthesize btn4;
@synthesize btn5;
@synthesize btn6;
@synthesize btn7;
@synthesize btn8;
@synthesize btn9;
@synthesize kekkalbl;
@synthesize reset;
@synthesize resetbtn;

//int i = 1;

//@synthesize button;
/*@synthesize pushButton1;
@synthesize pushButton2;
@synthesize pushButton3;
@synthesize pushButton4;
@synthesize pushButton5;
@synthesize pushButton6;
@synthesize pushButton7;
@synthesize pushButton8;
@synthesize pushButton9;*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    reset.hidden = YES;
    control = [Control alloc];
    [self init];
    /*UIButton *btn1 = [UIButton buttonWithType:normal];
    UIButton *btn2 = [UIButton buttonWithType:normal];
    UIButton *btn3 = [UIButton buttonWithType:normal];
    UIButton *btn4 = [UIButton buttonWithType:normal];
    UIButton *btn5 = [UIButton buttonWithType:normal];
    UIButton *btn6 = [UIButton buttonWithType:normal];
    UIButton *btn7 = [UIButton buttonWithType:normal];
    UIButton *btn8 = [UIButton buttonWithType:normal];
    UIButton *btn9 = [UIButton buttonWithType:normal];*/
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    [btn1 release];
    [btn2 release];
    [btn3 release];
    [btn4 release];
    [btn5 release];
    [btn6 release];
    [btn7 release];
    [btn8 release];
    [btn9 release];
    [reset release];
    [super dealloc];
}

- (void)init{
    int a;
    for (a = 1; a < 10; a++) {
        result[a] = 2;
    }
}

//終了判定
- (void)Clear_Check{
    
    if (result[1] == i && result[2] == i && result[3] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[4] == i && result[5] == i && result[6] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[7] == i && result[8] == i && result[9] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[1] == i && result[4] == i && result[7] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[2] == i && result[5] == i && result[8] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[3] == i && result[6] == i && result[9] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[1] == i && result[5] == i && result[9] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[3] == i && result[5] == i && result[7] == i){
        kekkalbl.text = @"You Win";
        reset.hidden = NO;
    }else if(result[1] != 2 && result[2] != 2 && result[3] != 2 && result[4] != 2 && result[5] != 2 && result[6] != 2 && result[7] != 2 && result[8] != 2 && result[9] !=2 ){
        kekkalbl.text = @"Drow";
        reset.hidden = NO;
    }
}

-(void)pushed_button
{
    if(btn.tag == 1){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 2){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 3){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 4){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 5){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 6){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 7){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else if (btn.tag == 8){
        [self Turn];
        NSLog(@"%d",btn.tag);
    }else{
        [self Turn];
        NSLog(@"%d",btn.tag);
    }
}

- (IBAction)BtnPush:(id)sender //senderでUIButtonを取得
{
    btn = (UIButton *)sender;
    /*btn1 = (UIButton *)sender;
    btn2 = (UIButton *)sender;
    btn3 = (UIButton *)sender;
    btn4 = (UIButton *)sender;
    btn5 = (UIButton *)sender;
    btn6 = (UIButton *)sender;
    btn7 = (UIButton *)sender;
    btn8 = (UIButton *)sender;
    btn9 = (UIButton *)sender;*/
    [self pushed_button];
}



- (void)Turn{
    if(result[btn.tag] == 2){
        if(i == 0){
            //@"○";
            [self Maru];
        }else{
            //@"×";
            [self Batsu];
        }
        result[btn.tag] = i;
        [self Clear_Check];
        i = 1 - i;
    }
}

- (void)Maru{
    [btn setTitle:@"○" forState:UIControlStateNormal];
}

- (void)Batsu{
    [btn setTitle:@"×" forState:UIControlStateNormal];
}

- (void)Reset{
    [btn1 setTitle:@"" forState:UIControlStateNormal];
    [btn2 setTitle:@"" forState:UIControlStateNormal];
    [btn3 setTitle:@"" forState:UIControlStateNormal];
    [btn4 setTitle:@"" forState:UIControlStateNormal];
    [btn5 setTitle:@"" forState:UIControlStateNormal];
    [btn6 setTitle:@"" forState:UIControlStateNormal];
    [btn7 setTitle:@"" forState:UIControlStateNormal];
    [btn8 setTitle:@"" forState:UIControlStateNormal];
    [btn9 setTitle:@"" forState:UIControlStateNormal];
    kekkalbl.text = @"";
    reset.hidden = YES;
    [self init];
    i = 0;
}


- (IBAction)ResetButton:(id)sender{
    [self Reset];
}


@end
