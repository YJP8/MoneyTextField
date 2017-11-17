//
//  MoneyTextField.m
//  MoneyTextField
//
//  Created by Levante on 2017/11/17.
//  Copyright © 2017年 Levante. All rights reserved.
//

#import "MoneyTextField.h"
#define myDotNumbers     @"0123456789.\n"
#define myNumbers          @"0123456789\n"

@implementation MoneyTextField

- (instancetype)init {
    self = [super init];
    if (self) {
        [self addjustTextField];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    [self addjustTextField];
}

- (void)addjustTextField {
    self.delegate = self;
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    // 判断是否输入内容，或者用户点击的是键盘的删除按钮
    if (![string isEqualToString:@""]) {
        NSCharacterSet *cs;
        // 小数点在字符串中的位置 第一个数字从0位置开始
        
        NSInteger dotLocation = [textField.text rangeOfString:@"."].location;
        // 判断字符串中是否有小数点，并且小数点不在第一位
        // NSNotFound 表示请求操作的某个内容或者item没有发现，或者不存在
        // range.location 表示的是当前输入的内容在整个字符串中的位置，位置编号从0开始
        if (dotLocation == NSNotFound && range.location != 0) {
            // 取只包含“myDotNumbers”中包含的内容，其余内容都被去掉
            
            /* [NSCharacterSet characterSetWithCharactersInString:myDotNumbers]的作用是去掉"myDotNumbers"中包含的所有内容，只要字符串中有内容与"myDotNumbers"中的部分内容相同都会被舍去在上述方法的末尾加上invertedSet就会使作用颠倒，只取与“myDotNumbers”中内容相同的字符
             */
            cs = [[NSCharacterSet characterSetWithCharactersInString:myDotNumbers] invertedSet];
            if (range.location >= 9) {
                if ([string isEqualToString:@"."] && range.location == 9) {
                    return YES;
                }
                return NO;
            }
        }else {
            cs = [[NSCharacterSet characterSetWithCharactersInString:myNumbers] invertedSet];
        }
        // 按cs分离出数组,数组按@""分离出字符串
        NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
        BOOL basicTest = [string isEqualToString:filtered];
        if (!basicTest) {
            return NO;
        }
        if (dotLocation != NSNotFound && range.location > dotLocation + 2) {
            return NO;
        }
        if (textField.text.length > 11) {
            return NO;
        }
    }
    return YES;
}
@end
