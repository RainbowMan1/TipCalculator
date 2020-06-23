//
//  ViewController.m
//  TipCalculator
//
//  Created by Nikesh Subedi on 6/23/20.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)OnEdit:(id)sender {
    double bill = [self.billAmountField.text doubleValue];
    NSArray *percentages = @[@(0.1),@(0.15),@(0.2)];
    double tipPercentage =[ percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double tipAmount = bill*tipPercentage;
    double total = bill+tipAmount;
    self.tipAmountLabel.text= [NSString stringWithFormat:@"$%.2f",tipAmount];
    self.totalAmountLabel.text=[NSString stringWithFormat:@"$%.2f",total];
}

@end
    