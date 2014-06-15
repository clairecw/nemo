//
//  FSHViewController.h
//  nemo
//
//  Created by t on 6/13/14.
//  Copyright (c) 2014 Fishackathon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSHViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *vesselID;
@property (weak, nonatomic) IBOutlet UITextField *enginein;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;

@property (weak, nonatomic) IBOutlet UIPickerView *engine;
@property (weak, nonatomic) IBOutlet UITextField *hp;
@property (weak, nonatomic) IBOutlet UISlider *length;
@property (weak, nonatomic) IBOutlet UISlider *width;
@property (weak, nonatomic) IBOutlet UISlider *height;

@property (weak, nonatomic) IBOutlet UIButton *submit;
- (IBAction)submit:(id)sender;
- (IBAction)dismisskeyboard:(id)sender;

@end
