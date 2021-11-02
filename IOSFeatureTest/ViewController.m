//
//  ViewController.m
//  IOSFeatureTest
//
//  Created by wangjingqian on 2020/9/29.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 100)];
    [self.view addSubview:self.label];
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 150, 400, 100)];
    [self.textField setPlaceholder:@"这里是一个输入框"];
    [self.textField setDelegate:self];
    [self.view addSubview:self.textField];
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 300, 400, 100)];
    [self.textView setText:@"fff"];
    [self.view addSubview:self.textView];
}

# pragma mark - UITextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"textFieldDidBeginEditing onCall, textFild text = %@", textField.text);
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"textFieldDidEndEditing onCall, textFild text = %@", textField.text);
    self.label.text = textField.text;
}




@end
