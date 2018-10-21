//
//  LoadResourceDemoVc.m
//  Pods-YPDemoLib_Example
//
//  Created by 胡云鹏 on 2018/10/20.
//

#import "LoadResourceDemoVc.h"
#import "YPDemoVc.h"

@interface LoadResourceDemoVc ()

@property (nonatomic, weak) UIImageView *iv;

@end

@implementation LoadResourceDemoVc

- (UIImageView *)iv
{
    if (!_iv) {
        UIImageView *iv = [UIImageView new];
        _iv = iv;
        [self.view addSubview:iv];
    }
    return _iv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.iv.frame = CGRectMake(100, 100, 100, 100);
    
    self.iv.image = [UIImage imageNamed:@"myicon" inBundle:[self comBundle] compatibleWithTraitCollection:nil];
}

- (NSBundle *)comBundle
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *bundleURL = [bundle URLForResource:@"YPDemoLib" withExtension:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithURL:bundleURL];
    
    return resourceBundle;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 1.json
//    [self loadJSON];
    
    // 2.nib vc
//    [self loadNibVc];
    
    // 3.sb
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"YPDemoStoryboard" bundle:[self comBundle]];
    [self.navigationController pushViewController:sb.instantiateInitialViewController animated:YES];
}

- (void)loadNibVc
{
    YPDemoVc *vc = [[YPDemoVc alloc] initWithNibName:@"YPDemoVc" bundle:[self comBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)loadJSON
{
    NSString *path = [[self comBundle] pathForResource:@"YPDemo" ofType:@"json"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSLog(@"%@",dict);
}



@end
