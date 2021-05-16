//
// HYBBaseOption.m
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

#import "HYBBaseOption.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBVariantOption.h"


@implementation HYBBaseOption

+ (instancetype)baseOptionWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBBaseOption *object = [MTLJSONAdapter modelOfClass:[HYBBaseOption class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBBaseOption");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"variantType" : @"variantType",
@"options" : @"options",
@"selected" : @"selected"
};
}

+ (NSValueTransformer *)optionsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBVariantOption class]];
}




+ (NSValueTransformer *)selectedJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBVariantOption class]];
}



@end