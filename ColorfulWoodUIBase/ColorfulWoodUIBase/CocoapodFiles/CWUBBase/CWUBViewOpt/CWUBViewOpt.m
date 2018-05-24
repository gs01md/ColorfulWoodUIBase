//
//  CWUBViewOpt.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBViewOpt.h"
#import "CWUBModelBase.h"
#import "CWUBCellBase.h"

@implementation CWUBViewOpt
/**
 * 把model里对应的视图（非cell），添加到父视图view中
 * 返回最后一个视图，便于外面的视图接着往下排列
 * topView：在某个视图的下面开始排列
 */
+ (UIView*)interface_addViewsTo:(UIView*)view topView:(UIView*)topView withModel:(CWUBModel*)model {

    UIView *last = topView?topView:nil;

    if (view && model && model.m_array_show && model.m_array_show.count>0) {

        for (NSArray *array in model.m_array_show) {

            for (CWUBModelBase *temp in array) {

                CWUBCellBase* cell = (CWUBCellBase*)[temp interface_getView:nil];
                [cell interface_updateWithModel:temp];
                [view addSubview:cell];

                if (last) {

                    [cell mas_makeConstraints:^(MASConstraintMaker *make) {
                        make.top.equalTo(last.mas_bottom);
                        make.left.equalTo(view);
                        make.right.equalTo(view);
                    }];
                }else{
                    //直接再view的顶部开始排列
                    [cell mas_makeConstraints:^(MASConstraintMaker *make) {

                        //是否是iphonex 要加上刘海的高度
                        if (CWUBBaseIsiPhoneX) {
                            make.top.equalTo(view).offset(32.);
                        }else{
                            make.top.equalTo(view).offset(0.);
                        }

                        make.left.equalTo(view);
                        make.right.equalTo(view);
                    }];
                }

                last = cell;
            }
        }
    }

    return last;
}
@end
