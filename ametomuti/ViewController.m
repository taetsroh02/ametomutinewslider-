//
//  ViewController.m
//  ametomuti
//
//  Created by ビザンコムマック０４ on 2014/09/12.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSTimer *timer; //クイズ中の経過時間を生成する
    int minuts;
    int seconds;
    BOOL isZero;//00:00を過ぎたかどうかの判定、YESならマイナスカウントを始めるから必要
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    minuts = 0;
    seconds = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(UIButton *)sender {
    [timer invalidate]; // タイマーを停止する
    //minutsとseconds初期化
    minuts = 0;
    seconds = 0;
    minuts=2;
    seconds=00;
    self.countdownlabel.text = [NSString stringWithFormat:@"%02d:%02d",minuts,seconds];
    minuts=1;seconds=60;
    [self timer];
    }

- (IBAction)button2:(UIButton *)sender {
}

- (IBAction)creabutton1:(UIButton *)sender {
}

- (IBAction)creabutton2:(UIButton *)sender {
}

- (IBAction)stopbutton:(UIButton *)sender {
    [self performSegueWithIdentifier:@"IntoSecondVCSegue" sender:self];//画面遷移（せんい）の動作
    [timer invalidate]; // タイマーを停止する
}

- (IBAction)value:(UISlider *)sender {
    
    self.sliderlabel.text = [NSString stringWithFormat:@"%d分",(int)sender.value];
    [timer invalidate]; // タイマーがすでに動いている場合を考えて一旦タイマーを停止する
    // minutsとsecondsの中身を初期化
    minuts = 0;
    seconds = 0;
    
    //minutsにはスライダーの値を代入してラベルにカウントダウンを表示開始
    minuts=((int)sender.value);
    seconds=00;
    self.countdownlabel.text = [NSString stringWithFormat:@"%02d:%02d",minuts,seconds];
    
    minuts=((int)sender.value)-1;seconds=60;
    [self timer];//タイマーを動かす
    
}


- (IBAction)creabutton:(UIButton *)sender {
    [timer invalidate]; // タイマーを停止する
    minuts = 0;
    seconds = 0;
    self.countdownlabel.text =
    [NSString stringWithFormat:@"%02d:%02d",minuts,seconds];// ラベルに時間を表示
   
}

-(void)timer{
    //countdownメソッドを１秒ごとに繰り返し呼ぶタイマー
    timer = [NSTimer
             scheduledTimerWithTimeInterval:1
             target: self
             selector:@selector(countdown)
             userInfo:nil
             repeats:YES];
}

-(void)countdown{
    //まだ00:00通ってなかったらsecondsから1ずつ引いていく
    if (!isZero) {
        if(seconds>0){
            seconds--;
            self.countdownlabel.text = [NSString stringWithFormat:@"%02d:%02d",minuts,seconds];// ラベルに時間を表示
        }else if(minuts != 0 && seconds == 0){
            //まだ0分ではなくかつsecondsが00になったらminutsから1分引いてsecoondsを60秒にしてまた1秒ずつ引く
            minuts--;
            seconds=60;
            seconds--;
            self.countdownlabel.text = [NSString stringWithFormat:@"%02d:%02d",minuts,seconds];
            
        }
        //00:00になったらisZeroをYESにする
        else if(minuts == 0 && seconds ==0){
            isZero = YES;
                    }
    }
    else{
        //00:00を過ぎてたらなら、マイナスカウントメソッドを実行
        [self mainasucount];
    }
    

}

-(void)mainasucount{
    self.countdownlabel.textColor = [UIColor redColor];//マイナスカウントは赤字にする
   //マイナスなので○分の前に−つけて、secondsは1秒ずつ足されていく
    seconds++;
    self.countdownlabel.text = [NSString stringWithFormat:@"- %02d:%02d",minuts,seconds];
    //secondsが60になったら1分足して0秒に戻す、そしてまた1秒ずつ足していく
    if (seconds == 60) {
        minuts++;
        seconds = 0;
        self.countdownlabel.text = [NSString stringWithFormat:@"- %02d:%02d",minuts,seconds];
        seconds++;
    }
}



@end
