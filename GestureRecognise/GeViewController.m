//
//  GeViewController.m
//  GestureRecognise
//
//  Created by 杨 宏强 on 13-1-26.
//  Copyright (c) 2013年 yanghongqiang. All rights reserved.
//

#import "GeViewController.h"

@interface GeViewController ()

@end

@implementation GeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *seipeges=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftswipe:)];
    seipeges.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:seipeges];
    
    UISwipeGestureRecognizer *rightgesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(rightswipe:)];
    [self.view addGestureRecognizer:rightgesture];
}
- (void)leftswipe:(UISwipeGestureRecognizer*)recognizer {
    // 触发手勢事件后，在这里作些事情
   sheet=[[UIActionSheet alloc]initWithTitle:@"sheetbook" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"what" otherButtonTitles:@"ohter", nil];
    sheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [sheet showInView:self.view];
    // 底下是刪除手势的方法
    //[self.view removeGestureRecognizer:recognizer];
}
-(void)rightswipe:(UISwipeGestureRecognizer*)recognizer{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"hello" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"otherbutton", nil];
    [alert show];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
      
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
