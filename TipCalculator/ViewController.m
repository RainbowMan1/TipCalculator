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
@property (weak, nonatomic) IBOutlet UILabel *billAmountLabel;
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

- (IBAction)onEdit:(id)sender {
    double bill = [self.billAmountLabel.text doubleValue];
    NSArray *percentages = @[@(0.1),@(0.15),@(0.2)];
    double tipPercentage =[ percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double tipAmount = bill*tipPercentage;
    double total = bill+tipAmount;
    self.tipAmountLabel.text= [NSString stringWithFormat:@"$%.2f",tipAmount];
    self.totalAmountLabel.text=[NSString stringWithFormat:@"$%.2f",total];
}
- (IBAction)buttonDown1:(id)sender {
    [self buttonHelper:1];
}
- (IBAction)buttonDown2:(id)sender {
    [self buttonHelper:2];
}
- (IBAction)buttonDown3:(id)sender {
    [self buttonHelper:3];
}
- (IBAction)buttonDown4:(id)sender {
    [self buttonHelper:4];
}
- (IBAction)buttonDown5:(id)sender {
    [self buttonHelper:5];
}
- (IBAction)buttonDown6:(id)sender {
    [self buttonHelper:6];
}
- (IBAction)buttonDown7:(id)sender {
    [self buttonHelper:7];
}
- (IBAction)buttonDown8:(id)sender {
    [self buttonHelper:8];
}
- (IBAction)buttonDown9:(id)sender {
    [self buttonHelper:9];
}
- (IBAction)buttonDown0:(id)sender {
    [self buttonHelper:0];
}
- (IBAction)buttonDownPoint:(id)sender {
    NSRange range = [self.billAmountLabel.text rangeOfString:@"."];
    if (range.location == NSNotFound){
        self.billAmountLabel.text = [self.billAmountLabel.text stringByAppendingString:@"."];
    }
}
- (void)buttonHelper:(int)num{
    self.billAmountLabel.text = [self.billAmountLabel.text stringByAppendingString:[NSString stringWithFormat: @"%d", num]];
}
- (IBAction)buttonDelete:(id)sender {
    if (![self.billAmountLabel.text isEqual:@""]){
        self.billAmountLabel.text = [self.billAmountLabel.text substringToIndex:[self.billAmountLabel.text length]-1];
    }
}

@end
    
