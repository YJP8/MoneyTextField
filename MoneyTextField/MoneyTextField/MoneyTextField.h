//
//  MoneyTextField.h
//  MoneyTextField
//
//  Created by Levante on 2017/11/17.
//  Copyright © 2017年 Levante. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoneyTextField : UITextField <UITextFieldDelegate>
@property (nonatomic, assign) BOOL isHaveDian;

@property (nonatomic, assign) BOOL isFirstZero;

/// 小数点前面位数
@property (nonatomic, assign) NSInteger frontDecimal;
/**
 保留几位小数
 */
@property (nonatomic, assign) NSInteger theDecimal;
@end
