//
//  SpinViewController.m
//  SpinTest
//
//  Created by Javier Martin on 8/10/12.
//  Copyright (c) 2012 Javier Martin de Valmaseda. All rights reserved.
//

#import "SpinViewController.h"
#define SPIN_DURATION 0.2f

@implementation SpinViewController
@synthesize card;
@synthesize cardBack;
@synthesize cardFront;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCardFront:nil];
    [self setCardBack:nil];
    [self setCard:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait;
}

- (IBAction)spinPressed:(id)sender
{
    [self spinCard: 5];
}

- (void) spinCard: (int) rotations

{
    if (rotations == 0) return;
    
    [UIView transitionWithView: card
                      duration: SPIN_DURATION / 2
                       options: UIViewAnimationOptionTransitionFlipFromLeft + UIViewAnimationOptionCurveLinear
                    animations: ^{
                        cardFront.hidden = YES;
                        cardBack.hidden = NO;
                    }
                    completion: ^(BOOL finished) {
                        
                        [UIView transitionWithView: card
                                          duration:  SPIN_DURATION / 2
                                           options: UIViewAnimationOptionTransitionFlipFromLeft + UIViewAnimationOptionCurveLinear
                                        animations: ^{
                                            cardBack.hidden = YES;
                                            cardFront.hidden = NO;
                                        }
                                        completion: ^(BOOL finished) {
                                            [self spinCard: rotations - 1];
                                        }];
                    }];
}
@end
