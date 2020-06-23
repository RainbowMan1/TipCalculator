//
//  ViewController.m
//  TipCalculator
//
//  Created by Nikesh Subedi on 6/23/20.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountField;
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
    self.tipAmountLabel.text= @"$10.00";
    self.totalAmountLabel.text= @"$10.00";
}

@end
