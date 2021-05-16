//
// HYBAddressList.m
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

#import "HYBAddressList.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBAddress.h"


@implementation HYBAddressList

+ (instancetype)addressListWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBAddressList *object = [MTLJSONAdapter modelOfClass:[HYBAddressList class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBAddressList");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"addresses" : @"addresses"
};
}

+ (NSValueTransformer *)addressesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBAddress class]];
}






@end