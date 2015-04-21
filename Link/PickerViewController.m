//
//  PickerViewController.m
//  
//
//  Created by Eleve on 21/04/2015.
//
//

#import "PickerViewController.h"

@implementation PickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize Data
    _pickerData = [@[@"Confucius", @"Martin Luther King", @"Jesus Christ", @"Boudha", @"Nelson Mandela", @"Socrates", @"Mohammed Ali", @"Gandhi", @"Tim Berners Lee", @"Rosa Parks"] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    self.teachersPicker.dataSource = self;
    self.teachersPicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (long)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (long)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}

// Catpure the picker view selection
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"row : %ld", (long)row);
    NSLog(@"component : %ld", (long)component);
    NSLog(@"value : %@", _pickerData[row]);
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
}
@end

