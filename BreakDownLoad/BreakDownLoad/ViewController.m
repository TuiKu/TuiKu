//
//  ViewController.m
//  BreakDownLoad
//
//  Created by student on 16/3/17.
//  Copyright © 2016年 渊虹. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<NSURLConnectionDataDelegate> {
    
    long long _receviceLength;  //用来接收保存已经下载好的长度
    long long _totalLength;    //总长度
    
}


@property (nonatomic,retain) NSFileHandle *fileHandle;

@property (nonatomic,retain) NSURLConnection *connection;




@property (retain, nonatomic) IBOutlet UILabel *progressLabel;


@property (retain, nonatomic) IBOutlet UIProgressView *progress;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSFileManager *manager = [NSFileManager defaultManager];
    if (![manager fileExistsAtPath:[self getFilePath]]) {
        
        
        [manager createFileAtPath:[self getFilePath] contents:nil attributes:nil];

    }
    
    
    
    //+(id)fileHandleForWritingAtPath:(NSString*)path;//打开一个文件准备写入

    if (_fileHandle==nil) {
        self.fileHandle = [NSFileHandle fileHandleForWritingAtPath:[self getFilePath]];
    }
    
    
    
    NSLog(@"%@",NSHomeDirectory());
    
//    NSString  *ceches = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
//    
//    NSLog(@"%@",ceches);
    
    
    
}





- (IBAction)downLoadBtnClick:(UIButton *)sender {
    
    
    //http://dlsw.baidu.com/sw-search-sp/soft/2a/25677/QQ_V4.1.1.1456905733.dmg
    
  //  NSString *urlStr = @"http://192.168.1.223:8080/js/jdk.dmg";
    
   
    
 
      NSString *urlStr = @"http://dlsw.baidu.com/sw-search-sp/soft/29/12328/IQIYIsetup_5.1.9.1812.1456806341.exe";

  //  NSString *urlStr = @"http://192.168.1.223:8080/js/jdk.dmg";

    
    
    
  //  self打点会调set方法
 
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlStr]];

    [request setHTTPMethod:@"GET"];
 
    //range告诉服务器从哪个字节开始下载数据

    
    
    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:[self getFilePath]]) {
        
        
        //这个方法是取出来输入的文件路径下的那个文件的属性
        
    NSDictionary   *dic=[manager attributesOfItemAtPath:[self getFilePath] error:nil];
        
        NSLog(@"%@",dic);
        

        _receviceLength=   [dic[NSFileSize] longLongValue];
    }
    //%qu 是长长整形的占位符
    NSString *rangeStr = [NSString stringWithFormat:@"bytes=%qu-",_receviceLength];
    
        //    range告诉服务器要从哪个字节传数据给我们
    
    [request setValue:rangeStr forHTTPHeaderField:@"range"];
   
     self.connection=[NSURLConnection connectionWithRequest:request delegate:self];
}

- (IBAction)pauseBtnClick:(UIButton *)sender {
    
    [_connection cancel];
    _connection=nil;
}


-(NSString *)getFilePath {
    return  [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/qq.dmg"];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
   
    
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {

    //这个属性是想要未下载的长度(即未下载的长度)
    
    _totalLength= _receviceLength+ response.expectedContentLength;
    
    NSLog(@"123456");
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    
    
    _receviceLength =_receviceLength+data.length;
    
    _progress.progress = (CGFloat)_receviceLength/_totalLength;
    
    //float是c语言的写法   CGFloat是OC的写法
    
    
    
    _progressLabel.text =[NSString stringWithFormat:@"%.f%%",_progress.progress*100];
    
    //要两个%% 一个% 显示不出来%

    [_fileHandle seekToEndOfFile];
    [_fileHandle writeData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
 
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}












- (void)dealloc {
    [_progressLabel release];
    [_progress release];
    [super dealloc];
}
@end
