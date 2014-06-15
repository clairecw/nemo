//
//  FSHViewController.m
//  nemo
//
//  Created by t on 6/13/14.
//  Copyright (c) 2014 Fishackathon. All rights reserved.
//

#import "FSHViewController.h"

@interface FSHViewController (){
    NSMutableArray *listItems;
}

@end

@implementation FSHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	/*self.engine.delegate = self;
    self.engine.dataSource = self;
    self.engine.showsSelectionIndicator = YES;
    self.engine.opaque = NO;*/
    
    self.enginein.delegate = self;
    
    //self.enginein.inputView = pickerView;
    
    //pickerView = [[UIPickerView alloc] init];
    
    //listItems = [[NSMutableArray alloc] initWithObjects:@"Briggs",@"Johnson",@"YAMAHA",@"Suzuki" ,nil];
    
    self.vesselID.delegate = self;
    self.hp.delegate = self;
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return listItems.count;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [listItems objectAtIndex:row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}


- (IBAction)submit:(id)sender {
    NSLog(@"%@",self.vesselID);
}


- (IBAction)dismisskeyboard:(id)sender {
    [self.view endEditing:YES];
}
@end
