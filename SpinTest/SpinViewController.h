//
//  SpinViewController.h
//  SpinTest
//
//  Created by Javier Martin on 8/10/12.
//  Copyright (c) 2012 Javier Martin de Valmaseda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpinViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *card;
@property (weak, nonatomic) IBOutlet UIImageView *cardBack;
@property (weak, nonatomic) IBOutlet UIImageView *cardFront;
- (IBAction)spinPressed:(id)sender;

@end
