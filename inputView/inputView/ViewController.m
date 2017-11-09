//
//  ViewController.m
//  inputView
//
//  Created by Levante on 2017/11/8.
//  Copyright © 2017年 Levante. All rights reserved.
//

#import "ViewController.h"
#import "inputTextField.h"

@interface ViewController ()

@property (nonatomic, strong)inputTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textField = [[inputTextField alloc] init];
    _textField.frame = CGRectMake(120, 150, 150, 25);
    _textField.placeholder = @"请输入金额";
    _textField.borderStyle = UITextBorderStyleBezel;
    [self.view addSubview:_textField];
}

@end
