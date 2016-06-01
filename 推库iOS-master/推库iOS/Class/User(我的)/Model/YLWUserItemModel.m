//
//  YLWUserItemModel.m
//  推库iOS
//
//  Created by Mac on 16/2/21.
//  Copyright © 2016年 YLW. All rights reserved.
//

#import "YLWUserItemModel.h"

@implementation YLWUserItemModel

+(instancetype)userItemModelWithName:(NSString *)name urlstring:(NSString *)urlstring{

    YLWUserItemModel *model = [self userItemModelWithName:name];
    
    model.urlstring = urlstring;
    
    return model;
    

}

+(instancetype)userItemModelWithName:(NSString *)name{

    YLWUserItemModel *model = [[YLWUserItemModel alloc]init];
    
    model.name = name;
    
    return model;

}

+(instancetype)userItemModelWithName:(NSString *)name icon:(NSString *)icon{

    YLWUserItemModel *model = [self userItemModelWithName:name];
    
    model.icon = icon;
    
    return model;

}

+(instancetype)userItemModelWithName:(NSString *)name swich:(BOOL)swich{

    YLWUserItemModel *model = [self userItemModelWithName:name];
    
    model.swich = swich;
    
    return model;
    
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com