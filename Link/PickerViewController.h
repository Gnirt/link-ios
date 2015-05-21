//
//  PickerViewController.h
//  
//
//  Created by Eleve on 21/04/2015.
//
//

#import <UIKit/UIKit.h>
#import "CustomLabelWithDifferentColor.h"
@interface PickerViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSArray *_pickerData;
}
@property (weak, nonatomic) IBOutlet UIPickerView *teachersPicker;
@property (weak, nonatomic) IBOutlet CustomLabelWithDifferentColor *question;

@end
