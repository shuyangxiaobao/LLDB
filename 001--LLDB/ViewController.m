//
//  ViewController.m
//  001--LLDB
//
//  Created by H on 2018/5/2.
//  Copyright © 2018年 H. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property(nonatomic,strong)NSMutableArray<Person *> * models;

@end

@implementation ViewController

-(NSMutableArray<Person *> *)models
{
    if (!_models) {
        _models = [NSMutableArray array];
    }
    return _models;
}

void test1(){
    NSLog(@"3");
}
- (IBAction)save:(id)sender {
    NSLog(@"保存");
}

- (IBAction)pauseGame:(id)sender {
    NSLog(@"暂停");
}
- (IBAction)continueGame:(id)sender {
    NSLog(@"继续");
}

-(void)hankTest1:(NSString *)str{
    NSLog(@"%@",str);
    [self hankTest2:str];
}
-(void)hankTest2:(NSString *)str{
    NSLog(@"%@",str);
    [self hankTest3:str];
}
-(void)hankTest3:(NSString *)str{
    NSLog(@"%@",str);
    [self hankTest4:str];
}
-(void)hankTest4:(NSString *)str{
    NSLog(@"%@",str);
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person * p1 = [[Person alloc] init];
    p1.name = @"one";
    p1.age = 1;
    
    
    Person * p2 = [[Person alloc] init];
    p2.name = @"two";
    p2.age = 2;
    
    
    Person * p3 = [[Person alloc] init];
    p3.name = @"three";
    p3.age = 3;
    
    [self.models addObject:p1];
    [self.models addObject:p2];
    [self.models addObject:p3];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    [self hankTest1:@"hank"];
//    Person * p1 = self.models.firstObject;
//    p1.name = @"hah";
    
//     Person * p1 = self.models.firstObject;
    [self test2];
}


// 奔溃调试
#pragma mark    奔溃调试
-(void)test2{
    NSLog(@"%@",self.models[5]);

}


@end
