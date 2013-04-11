//
//  BarChart.h
//  BarChartDemo
//
//  Created by 张玺 on 13-4-11.
//  Copyright (c) 2013年 张玺. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarChart : UIView
{
    NSArray *values;
}

@property(nonatomic,strong)UIColor *barColor;

-(id)initWithFrame:(CGRect)frame values:(NSArray *)aValues;

@end
