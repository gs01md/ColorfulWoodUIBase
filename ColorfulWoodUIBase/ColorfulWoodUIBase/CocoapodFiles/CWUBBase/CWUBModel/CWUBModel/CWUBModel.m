//
//  CWUBModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/21.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModel.h"
#import "CWUBModelBase.h"

@implementation CWUBModel
-(NSMutableArray*) m_array_show {
    if (!_m_array_show) {
        _m_array_show = [NSMutableArray new];
    }
    return _m_array_show;
}

/**
 * 根据传入的model id 获取 input数据
 */
- (NSString*)interface_getInputById:(NSString*)strId{

    NSString * strValue = @"";
    if(strId && [strId stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length>0 &&
       _m_array_show && _m_array_show.count>0){

        for (NSArray* array in _m_array_show) {

            for (CWUBModelBase* model in array) {

                if ([model.m_id isEqualToString:strId]) {
                    return model.m_dataOut;
                }
            }
        }
    }

    return strValue;
}

/**
 * 获取section对应的cell数目
 */
- (NSUInteger)interface_getNumOfSection:(int)section{

    NSUInteger i = 0;

    if (self.m_array_show) {

        i = self.m_array_show.count;
    }

    return i;
}

/**
 * 获取section里对应的cell数目
 */
- (NSUInteger)interface_getNumInSection:(int)section{

    NSUInteger i = 0;

    if (self.m_array_show) {

        if (section<=self.m_array_show.count-1) {

            NSArray *array = self.m_array_show[section];

            if (array) {
                i = array.count;
            }
        }
    }

    return i;

}
@end
