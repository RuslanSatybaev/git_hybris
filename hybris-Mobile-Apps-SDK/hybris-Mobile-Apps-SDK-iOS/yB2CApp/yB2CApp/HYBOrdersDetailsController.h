//
// HYBOrdersDetailsController.h
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

#import <UIKit/UIKit.h>
#import "HYBViewController.h"

@class HYBB2CService;

@interface HYBOrdersDetailsController : HYBViewController <UITableViewDelegate, UITableViewDataSource>

- (instancetype)initWithBackEndService:(HYBB2CService*)backEndService andOrder:(HYBOrder *)order;


@end
