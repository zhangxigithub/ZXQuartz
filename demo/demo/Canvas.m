//
//  Canvas.m
//  demo
//
//  Created by 张 玺 on 13-3-29.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "Canvas.h"
#import "UIView+ZXQuartz.h"

@implementation Canvas

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    UIColor *blue = [UIColor colorWithRed:80.f/255.f
                                    green:150.f/255.f
                                     blue:225.f/255.f
                                    alpha:1];
    
    UIColor *white = [UIColor colorWithRed:1
                                     green:1
                                      blue:1
                                     alpha:1];
    UIColor *green = [UIColor colorWithRed:41.f/255.f
                                     green:199.f/255.f
                                      blue:165.f/255.f
                                     alpha:1];
    [blue setStroke];//设置线条颜色
    [white setFill]; //设置填充颜色
    
    //画背景矩形框
    [self drawRectangle:CGRectMake(10, 10, 300, 300)];
    
    //画圆角矩形
    [self drawRectangle:CGRectMake(15, 15, 290, 290) withRadius:10];
    
    //画多边形
    [green setFill];
    NSArray *points= @[[NSValue valueWithCGPoint:CGPointMake(70, 30)],
                       [NSValue valueWithCGPoint:CGPointMake(80, 70)],
                       [NSValue valueWithCGPoint:CGPointMake(120, 80)],
                       [NSValue valueWithCGPoint:CGPointMake(80, 90)],
                       [NSValue valueWithCGPoint:CGPointMake(70, 130)],
                       [NSValue valueWithCGPoint:CGPointMake(60, 90)],
                       [NSValue valueWithCGPoint:CGPointMake(20, 80)],
                       [NSValue valueWithCGPoint:CGPointMake(60, 70)],
                       [NSValue valueWithCGPoint:CGPointMake(70, 30)]];
    [self drawPolygon:points];
    [white setFill];
    
    //画波浪线
    [self drawCurveFrom:CGPointMake(120, 50)
                     to:CGPointMake(200, 50)
          controlPoint1:CGPointMake(130, 0)
          controlPoint2:CGPointMake(190, 100)];
    
    //画大圆
    [self drawCircleWithCenter:CGPointMake(160, 160)
                        radius:50];
    
    [blue setFill];//设置蓝色填充
    
    //画眼睛
    [self drawCircleWithCenter:CGPointMake(135, 145)
                        radius:6];
    [self drawCircleWithCenter:CGPointMake(185, 145)
                        radius:6];

    [white setFill];//切换回白色填充
    
    //画嘴巴
    [self drawArcFromCenter:CGPointMake(160, 160)
                     radius:30
                 startAngle:0
                   endAngle:3.14
                  clockwise:YES];

    //画三道直线
    [self drawLineFrom:CGPointMake(110, 260)
                    to:CGPointMake(210, 260)];
    [self drawLineFrom:CGPointMake(120, 265)
                    to:CGPointMake(200, 265)];
    [self drawLineFrom:CGPointMake(130, 270)
                    to:CGPointMake(190, 270)];
    
    //画扇形
    [[UIColor grayColor] setStroke];
    [white setFill];
    [self drawSectorFromCenter:CGPointMake(60, 400)
                        radius:30
                    startAngle:-3.14/2
                      endAngle:0
                     clockwise:YES];
    [blue setFill];
    [self drawSectorFromCenter:CGPointMake(60, 400)
                        radius:30
                    startAngle:0
                      endAngle:3.14/2
                     clockwise:YES];
    [white setFill];
    [self drawSectorFromCenter:CGPointMake(60, 400)
                        radius:30
                    startAngle:3.14/2
                      endAngle:3.14
                     clockwise:YES];
    [blue setFill];
    [self drawSectorFromCenter:CGPointMake(60, 400)
                        radius:30
                    startAngle:3.14
                      endAngle:-3.14/2
                     clockwise:YES];
    [blue setStroke];
    //画折线
    NSArray *lines = @[[NSValue valueWithCGPoint:CGPointMake(200, 400)],
                       [NSValue valueWithCGPoint:CGPointMake(220, 380)],
                       [NSValue valueWithCGPoint:CGPointMake(240, 410)],
                       [NSValue valueWithCGPoint:CGPointMake(260, 350)],
                       [NSValue valueWithCGPoint:CGPointMake(280, 410)],
                       [NSValue valueWithCGPoint:CGPointMake(300, 390)]];
    [self drawLines:lines];
}


@end
