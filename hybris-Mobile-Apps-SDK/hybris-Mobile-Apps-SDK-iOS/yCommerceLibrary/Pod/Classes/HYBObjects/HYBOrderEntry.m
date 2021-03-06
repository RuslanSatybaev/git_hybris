//
// HYBOrderEntry.m
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

#import "HYBOrderEntry.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBProduct.h"
#import "HYBPrice.h"
#import "HYBDeliveryMode.h"
#import "HYBPointOfService.h"


@implementation HYBOrderEntry

+ (instancetype)orderEntryWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBOrderEntry *object = [MTLJSONAdapter modelOfClass:[HYBOrderEntry class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBOrderEntry");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"updateable" : @"updateable",
@"product" : @"product",
@"quantity" : @"quantity",
@"totalPrice" : @"totalPrice",
@"deliveryMode" : @"deliveryMode",
@"deliveryPointOfService" : @"deliveryPointOfService",
@"entryNumber" : @"entryNumber",
@"basePrice" : @"basePrice"
};
}



+ (NSValueTransformer *)productJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBProduct class]];
}

+ (NSValueTransformer *)totalPriceJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBPrice class]];
}

+ (NSValueTransformer *)deliveryModeJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBDeliveryMode class]];
}

+ (NSValueTransformer *)deliveryPointOfServiceJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBPointOfService class]];
}

+ (NSValueTransformer *)basePriceJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBPrice class]];
}



@end