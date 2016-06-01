//
//  YLWImageModel.m
//  推库iOS
//
//  Created by Mac on 16/2/25.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import "YLWImageModel.h"

@implementation YLWImageModel

-(instancetype)initWithDictionary:(NSDictionary *)dic{

    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
        
        if (dic[@"id"]) {
            [self setValue:dic[@"id"] forKey:@"image_id"];
        }
    }
    return self;
    
}

+(instancetype)imageModelWithDictionary:(NSDictionary *)dic{

    return [[self alloc]initWithDictionary:dic];
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{


}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com