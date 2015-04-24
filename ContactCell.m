//
//  ContactCell.m
//  ContactChatApp
//
//  Created by Daniel Kwiatkowski on 2015-04-23.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "ContactCell.h"

@interface ContactCell () <UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;
@end
@implementation ContactCell
//initialiizer method for uitableview
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.nameLabel = [[UILabel alloc]init];
        self.nameLabel.backgroundColor = [UIColor blueColor];
        self.nameLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        self.nameLabel.textColor = [UIColor orangeColor];
        
        self.companyLabel = [[UILabel alloc]init];
        self.companyLabel.backgroundColor =[UIColor yellowColor];
        self.companyLabel.font =[UIFont fontWithName:@"Helvetica" size:17.0];
        self.companyLabel.textAlignment = NSTextAlignmentCenter;

        self.photoImageView = [[UIImageView alloc]init];
        self.photoImageView.backgroundColor = [UIColor redColor];
        self.photoImageView.image = [UIImage imageNamed:@"Profile_icon"];
        
        self.scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        
        
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.companyLabel];
        [self.contentView addSubview:self.photoImageView];
        [self.scrollView addSubview:self.contentView];
        [self addSubview:self.scrollView];
        self.scrollView.delegate = self;
    }
    return self;
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    NSLog(@"%f",scrollView.contentOffset.x);
//}

//subview layouts
- (void)layoutSubviews
{
    [super layoutSubviews];//will do basic configurations from uiview class
    self.scrollView.frame = self.bounds;
    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.bounds) * 2.0f, CGRectGetHeight(self.bounds));
    self.photoImageView.frame = CGRectMake(0, 0, CGRectGetWidth(self.contentView.bounds)/4.0, CGRectGetHeight(self.contentView.bounds));
    self.nameLabel.frame = CGRectMake(CGRectGetMaxX(self.photoImageView.frame), 0, CGRectGetWidth(self.contentView.bounds)-CGRectGetWidth(self.photoImageView.frame), (CGRectGetHeight(self.contentView.bounds)/2.0));
    self.companyLabel.frame = CGRectMake(CGRectGetMaxX(self.nameLabel.frame)/4.0,CGRectGetMaxY(self.nameLabel.frame),CGRectGetWidth(self.contentView.bounds)-CGRectGetWidth(self.photoImageView.frame),CGRectGetHeight(self.contentView.bounds)/2);
}



@end
