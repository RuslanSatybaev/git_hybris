//
// HYBProductSearchPage.m
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

#import "HYBProductSearchPage.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBSpellingSuggestion.h"
#import "HYBProduct.h"
#import "HYBSort.h"
#import "HYBPagination.h"
#import "HYBSearchState.h"
#import "HYBBreadcrumb.h"
#import "HYBFacet.h"


@implementation HYBProductSearchPage

+ (instancetype)productSearchPageWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBProductSearchPage *object = [MTLJSONAdapter modelOfClass:[HYBProductSearchPage class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBProductSearchPage");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"freeTextSearch" : @"freeTextSearch",
@"categoryCode" : @"categoryCode",
@"keywordRedirectUrl" : @"keywordRedirectUrl",
@"spellingSuggestion" : @"spellingSuggestion",
@"products" : @"products",
@"sorts" : @"sorts",
@"pagination" : @"pagination",
@"currentQuery" : @"currentQuery",
@"breadcrumbs" : @"breadcrumbs",
@"facets" : @"facets"
};
}

+ (NSValueTransformer *)productsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBProduct class]];
}

+ (NSValueTransformer *)sortsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBSort class]];
}

+ (NSValueTransformer *)breadcrumbsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBBreadcrumb class]];
}

+ (NSValueTransformer *)facetsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBFacet class]];
}




+ (NSValueTransformer *)spellingSuggestionJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBSpellingSuggestion class]];
}

+ (NSValueTransformer *)paginationJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBPagination class]];
}

+ (NSValueTransformer *)currentQueryJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBSearchState class]];
}



@end