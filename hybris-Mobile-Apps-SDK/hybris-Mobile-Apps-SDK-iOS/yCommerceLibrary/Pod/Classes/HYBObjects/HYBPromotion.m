//
// HYBPromotion.m
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

#import "HYBPromotion.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBImage.h"
#import "HYBPromotionRestriction.h"


@implementation HYBPromotion

+ (instancetype)promotionWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBPromotion *object = [MTLJSONAdapter modelOfClass:[HYBPromotion class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBPromotion");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"code" : @"code",
@"title" : @"title",
@"promotionType" : @"promotionType",
@"startDate" : @"startDate",
@"endDate" : @"endDate",
@"descriptor" : @"description",
@"couldFireMessages" : @"couldFireMessages",
@"firedMessages" : @"firedMessages",
@"productBanner" : @"productBanner",
@"enabled" : @"enabled",
@"priority" : @"priority",
@"promotionGroup" : @"promotionGroup",
@"restrictions" : @"restrictions"
};
}

+ (NSValueTransformer *)restrictionsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBPromotionRestriction class]];
}


+ (NSValueTransformer *)productBannerJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBImage class]];
}



@end