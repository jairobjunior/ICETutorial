//
//  ICETutorialSlideImageiPhoneViewController.h
//  ICETutorial
//
//  Created by Jairo Junior on 8/16/13.
//  Copyright (c) 2013 Patrick Trillsam. All rights reserved.
//

#import "ICETutorialController.h"

@interface ICETutorialSlideImageiPhoneViewController : ICETutorialController

- (id)initWithPages:(NSArray *)pages;
- (void)addTargetCloseButton:(id)target action:(SEL)action;

@end
