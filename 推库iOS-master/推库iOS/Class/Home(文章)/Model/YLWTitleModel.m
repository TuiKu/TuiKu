//
//  YLWTitleModel.m
//  推库iOS
//
//  Created by Mac on 16/2/18.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import "YLWTitleModel.h"

@implementation YLWTitleModel

-(instancetype)initWithDictionary:(NSDictionary *)dic{

    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;

}

+(instancetype)titleModelWithDictionary:(NSDictionary *)dic{

    return [[self alloc]initWithDictionary:dic];
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{

}

+(NSArray *)titleModelGetModelArrayWith:(NSString *)plistName{

    NSString *path = [[NSBundle mainBundle] pathForResource:plistName ofType:nil];
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *num = [NSMutableArray array];
    for (NSDictionary *dic in plistArray) {
        
        YLWTitleModel *model = [self titleModelWithDictionary:dic];
        [num addObject:model];
    }

    return num.copy;
}




@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com