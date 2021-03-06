//
// HYBLanguageList.m
// [y] hybris Platform
//
// Copyright (c) 2000-2016 hybris AG
// All rights reserved.
//
// This software is the confidential and proprietary information of hybris
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with hybris.
//
// Warning:This file was auto-generated by OCC2Ojbc.
//

#import "HYBLanguageList.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBLanguage.h"


@implementation HYBLanguageList

+ (instancetype)languageListWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBLanguageList *object = [MTLJSONAdapter modelOfClass:[HYBLanguageList class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBLanguageList");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"languages" : @"languages"
};
}

+ (NSValueTransformer *)languagesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBLanguage class]];
}






@end