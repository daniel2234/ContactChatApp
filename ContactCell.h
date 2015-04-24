//
//  ContactCell.h
//  ContactChatApp
//
//  Created by Daniel Kwiatkowski on 2015-04-23.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactCell : UITableViewCell

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *companyLabel;
@property (strong, nonatomic) UIImageView *photoImageView;

@end
