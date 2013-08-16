//
//  ICETutorialSlideImageiPhoneViewController.m
//  ICETutorial
//
//  Created by Jairo Junior on 8/16/13.
//  Copyright (c) 2013 Patrick Trillsam. All rights reserved.
//

#import "ICETutorialSlideImageiPhoneViewController.h"

@interface ICETutorialSlideImageiPhoneViewController ()

@property (strong, nonatomic) UIButton *closeButton;

@end

@implementation ICETutorialSlideImageiPhoneViewController

- (id)initWithPages:(NSArray *)pages
{
    self = [super initWithNibName:@"ICETutorialSlideImageController_iPhone" bundle:nil];
    if (self){
        _pages = pages;
        [self initCloseButton];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)initCloseButton
{
    _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_closeButton setBackgroundColor:[UIColor grayColor]];
    [_closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [_closeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[_closeButton titleLabel] setFont:[UIFont fontWithName:@"Helvetica-Bold" size:16]];
    [_closeButton setTitle:@"Get Started" forState:UIControlStateNormal];
    
}

- (void)addTargetCloseButton:(id)target action:(SEL)action
{
   [_closeButton addTarget:target action:action forControlEvents:UIControlEventTouchDown]; 
}

- (void)setOverlayTexts
{
    int index = 0;
    
    for (ICETutorialPage *page in _pages) {
        
        NSString *imageName = [NSString stringWithFormat:@"%@",[page pictureName]];
        
        CGRect insetFrame = CGRectMake((index  * _windowSize.width), 0,
                                       _windowSize.width,
                                       _windowSize.height);
        
        UIImageView *_imageView = [[UIImageView alloc] initWithFrame:insetFrame];
        _imageView.backgroundColor = [UIColor clearColor];
        [_imageView setImage:[UIImage imageNamed:imageName]];

        [_scrollView addSubview:_imageView];
        
        if (index == [_pages count]-1) {
            _closeButton.frame = CGRectMake((index  * _windowSize.width)+10, _windowSize.height - 90,
                                           300, 40);
            [_scrollView addSubview:_closeButton];
        }
        
        index++;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
