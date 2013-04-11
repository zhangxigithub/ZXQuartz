//
//  BarChart.m
//  BarChartDemo
//
//  Created by 张玺 on 13-4-11.
//  Copyright (c) 2013年 张玺. All rights reserved.
//

#import "BarChart.h"
#import "UIView+ZXQuartz.h"

@implementation BarChart

-(id)initWithFrame:(CGRect)frame values:(NSArray *)aValues;
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        values = aValues;
    }
    return self;
}

-(void)setBarColor:(UIColor *)theBarColor
{
    _barColor = theBarColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [self.barColor setFill];
    [self.barColor setStroke];

    float height   = self.frame.size.height;
    float width    = self.frame.size.width;
    float space    = 10;//柱子的间隔
    float barWidth = (width-space*(values.count+1))/values.count;

    
    NSArray *sortedValues = [values sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    float min = [[sortedValues objectAtIndex:0] floatValue];
    float max = [[sortedValues lastObject]      floatValue];
    
    [self drawLineFrom:CGPointMake(0    ,height)
                    to:CGPointMake(width,height)];
    
    for(int i=0;i<values.count;i++)
    {
        float value = [values[i] floatValue];
        float barHeight = height;
        
        if(max != min)
        {
            barHeight = ((value-min)/(max-min))*(height-20)+20;
        }
            
        CGRect bar = CGRectMake(space*(i+1)+barWidth*i,
                                height-barHeight,
                                barWidth,
                                barHeight);
        [self drawRectangle:bar];
    }
}


@end
