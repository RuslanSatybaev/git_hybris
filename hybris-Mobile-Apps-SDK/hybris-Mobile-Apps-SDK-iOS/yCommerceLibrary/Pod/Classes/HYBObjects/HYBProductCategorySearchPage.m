//
// HYBProductCategorySearchPage.m
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

#import "HYBProductCategorySearchPage.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBCategory.h"


@implementation HYBProductCategorySearchPage

+ (instancetype)productCategorySearchPageWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBProductCategorySearchPage *object = [MTLJSONAdapter modelOfClass:[HYBProductCategorySearchPage class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBProductCategorySearchPage");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"subCategories" : @"subCategories"
};
}

+ (NSValueTransformer *)subCategoriesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBCategory class]];
}






@end