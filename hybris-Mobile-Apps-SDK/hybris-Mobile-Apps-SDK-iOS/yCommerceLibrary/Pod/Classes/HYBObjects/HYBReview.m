//
// HYBReview.m
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

#import "HYBReview.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBUser.h"


@implementation HYBReview

+ (instancetype)reviewWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBReview *object = [MTLJSONAdapter modelOfClass:[HYBReview class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBReview");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"id" : @"id",
@"headline" : @"headline",
@"comment" : @"comment",
@"rating" : @"rating",
@"date" : @"date",
@"alias" : @"alias",
@"principal" : @"principal"
};
}




+ (NSValueTransformer *)principalJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBUser class]];
}



@end