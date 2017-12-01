//
//  ViewController.m
//  MoneyTextField
//
//  Created by Levante on 2017/11/17.
//  Copyright © 2017年 Levante. All rights reserved.
//

#import "ViewController.h"
#import "MoneyTextField.h"

@interface ViewController ()

@property (nonatomic, strong)MoneyTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _textField = [[MoneyTextField alloc] init];
    _textField.frame = CGRectMake(120, 150, 150, 25);
    _textField.placeholder = @"请输入金额";
    _textField.borderStyle = UITextBorderStyleBezel;
    [self.view addSubview:_textField];

}

@end
