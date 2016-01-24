//
//  ViewController.m
//  Calculator
//
//  Created by Kostya on 24.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "ViewController.h"
#define firstOPerFirstResp self.firstOperantTextField.isFirstResponder
#define secondOPerFirstResp self.secondOperantTextField.isFirstResponder
#define firsttext self.firstOperantTextField.text
#define secondText self.secondOperantTextField.text

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstOperantTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondOperantTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@property (assign, nonatomic) NSInteger firstNum;


- (IBAction)add:(id)sender;
- (IBAction)subb:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)devide:(id)sender;
- (IBAction)squareroot:(id)sender;
- (IBAction)powin2:(id)sender;
- (IBAction)powin3:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)tue:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)null:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)equal:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITapGestureRecognizer *tapView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(endEditing)];
    [self.view addGestureRecognizer:tapView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)endEditing {
    [self.view endEditing:YES];
}

#pragma mark - Actions

- (IBAction)add:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger second = [secondText integerValue];
        NSInteger result = first + second;
        self.resultLabel.text = [NSString stringWithFormat:@"%li", (long)result];
    }
}
- (IBAction)subb:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger second = [secondText integerValue];
        NSInteger result = first - second;
        self.resultLabel.text = [NSString stringWithFormat:@"%li", (long)result];
    }
}
- (IBAction)multiply:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger second = [secondText integerValue];
        NSInteger result = first * second;
        self.resultLabel.text = [NSString stringWithFormat:@"%li", (long)result];
    }
}

- (IBAction)devide:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger second = [secondText integerValue];
        float result = (float)first / (float)second;
        self.resultLabel.text = [NSString stringWithFormat:@"%f", result];
    }
}
- (BOOL)checkTextFields {
    if (self.firstOperantTextField.text.length && self.secondOperantTextField.text.length) {
        return YES;
    } else {
        self.resultLabel.text = @"ERROR!";
        return NO;
    }
}
- (IBAction)squareroot:(id)sender {
    NSInteger first = [firsttext integerValue];
    float result = sqrt(first);
    self.resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
- (IBAction)one:(id)sender
{
    if (firstOPerFirstResp)
    {
        firsttext = [firsttext stringByAppendingString:@"1"];
    }
    
    else if (secondOPerFirstResp)
    {
        secondText = [secondText stringByAppendingString:@"1"];
    }
}
- (IBAction)tue:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"2"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"2"];
        }
    }
- (IBAction)three:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"3"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"3"];
        }
    }
- (IBAction)four:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"4"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"4"];
        }
    }
- (IBAction)five:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"5"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"5"];
        }
    }
- (IBAction)six:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"6"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"6"];
        }
    }
- (IBAction)seven:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"7"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"7"];
        }
    }
- (IBAction)eight:(id)sender
    {
        if (firstOPerFirstResp)
        {
           firsttext = [firsttext stringByAppendingString:@"8"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"8"];
        }
    }
- (IBAction)nine:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"9"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"9"];
        }
    }
- (IBAction)null:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"0"];
        }
        
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"0"];
        }
    }
- (IBAction)equal:(id)sender
{
    firsttext = @"";
   secondText = @"";
}


- (IBAction)powin2:(id)sender {
    
    NSInteger first = [firsttext integerValue];
    float result = pow(first,2);
    
    self.resultLabel.text = [NSString stringWithFormat:@"%f", result];
}

- (IBAction)powin3:(id)sender {
    
    NSInteger first = [firsttext integerValue];
    float result = pow(first,3);
    
    self.resultLabel.text = [NSString stringWithFormat:@"%f", result];
    
}



@end
