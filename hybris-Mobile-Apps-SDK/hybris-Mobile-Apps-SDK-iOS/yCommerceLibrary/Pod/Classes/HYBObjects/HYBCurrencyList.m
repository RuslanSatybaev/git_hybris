//
// HYBCurrencyList.m
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

#import "HYBCurrencyList.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBCurrency.h"


@implementation HYBCurrencyList

+ (instancetype)currencyListWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBCurrencyList *object = [MTLJSONAdapter modelOfClass:[HYBCurrencyList class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBCurrencyList");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"currencies" : @"currencies"
};
}

+ (NSValueTransformer *)currenciesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBCurrency class]];
}






@end