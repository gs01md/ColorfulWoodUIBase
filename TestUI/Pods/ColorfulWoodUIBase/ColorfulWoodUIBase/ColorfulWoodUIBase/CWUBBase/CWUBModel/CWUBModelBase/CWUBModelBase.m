//
//  CWUBModelBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"
#import "CWUBCell_TitleLeft_InfoRight.h"
#import "CWUBCell_TitleLeft_InfoLeft.h"
#import "CWUBCell_TitleRight_ButtonRight.h"
#import "CWUBCell_Trip.h"
#import "CWUBCell_TitleLeft_InfoRight_ButtonRight.h"
#import "CWUBCell_ButtonLeft_TitleLeft.h"
#import "CWUBCell_Passenger.h"
#import "CWUBCell_Passenger_Delete.h"
#import "CWUBCell_Passenger_Opt.h"
#import "CWUBCell_TitleLeft_InfoLeft_ButtonRight.h"
#import "CWUBCell_Address.h"
#import "CWUBCell_TitleLeft_InputLeft.h"
#import "CWUBCell_ButtonRight_TitleRight_ButtonRight.h"
#import "CWUBCell_Refund.h"
#import "CWUBCell_ImgLeft_TitleLeft_InfoRight.h"
#import "CWUBCell_ButtonRight_SpaceBottom.h"
#import "CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight.h"
#import "CWUBCell_TitleLeft_SwithRight.h"
#import "CWUBCell_Address_ArrowRight.h"
#import "CWUBCell_CharterDetail_Opt.h"
#import "CWUBCell_TitleIconLeft_IconCenter_IconTitleRight.h"
#import "CWUBCell_IconTitleLeft_IconTitleRight.h"
#import "CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight.h"
#import "CWUBCell_CharterDiscount.h"

@implementation CWUBModelBase
/**
 * 根据类型获取视图
 * tableView：在不是cell时，可不传
 */
- (UIView*) interface_getView:(UITableView*)tableView{

    UIView * view = nil;

    if (self.m_type) {

        switch (self.m_type) {

            case CWUBCellType_TitleLeft_InfoRight:
                view = [self func_CWUBCell_TitleLeft_InfoRight:tableView];
                break;

            case CWUBCellType_TitleLeft_InfoLeft:
                view = [self func_CWUBCell_TitleLeft_InfoLeft:tableView];
                break;

            case CWUBCellType_TitleRight_ButtonRight:
                view = [self func_CWUBCell_TitleRight_ButtonRight:tableView];
                break;

            case CWUBCellType_Trip:
                view = [self func_CWUBCell_Trip:tableView];
                break;

            case CWUBCellType_TitleLeft_InfoRight_ButtonRight:
                view = [self func_CWUBCell_TitleLeft_InfoRight_ButtonRight:tableView];
                break;

            case CWUBCellType_ButtonLeft_TitleLeft:
                view = [self func_CWUBCell_ButtonLeft_TitleLeft:tableView];
                break;

            case CWUBCellType_Passenger:
                view = [self func_CWUBCell_Passenger:tableView];
                break;

            case CWUBCellType_Passenger_Delete:
                view = [self func_CWUBCell_Passenger_Delete:tableView];
                break;

            case CWUBCellType_Passenger_Opt:
                view = [self func_CWUBCell_Passenger_Opt:tableView];
                break;

            case CWUBCellType_TitleLeft_InfoLeft_ButtonRight:
                view = [self func_CWUBCell_TitleLeft_InfoLeft_ButtonRight:tableView];
                break;

            case CWUBCellType_Address:
                view = [self func_CWUBCell_Address:tableView];
                break;

            case CWUBCellType_TitleLeft_InputLeft:
                view = [self func_CWUBCell_TitleLeft_InputLeft:tableView];
                break;

            case CWUBCellType_ButtonRight_TitleRight_ButtonRight:
                view = [self func_CWUBCell_ButtonRight_TitleRight_ButtonRight:tableView];
                break;

            case CWUBCellType_Refund:
                view = [self func_CWUBCell_Refund:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleLeft_InfoRight:
                view = [self func_CWUBCell_ImgLeft_TitleLeft_InfoRight:tableView];
                break;

            case CWUBCellType_ButtonRight_SpaceBottom:
                view = [self func_CWUBCell_ButtonRight_SpaceBottom:tableView];
                break;

            case CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight:
                view = [self func_CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight:tableView];
                break;

            case CWUBCellType_TitleLeft_SwithRight:
                view = [self func_CWUBCell_TitleLeft_SwithRight:tableView];
                break;

            case CWUBCellType_Address_ArrowRight:
                view = [self func_CWUBCell_Address_ArrowRight:tableView];
                break;

            case CWUBCellType_CharterDetail_Opt:
                view = [self func_CWUBCell_CharterDetail_Opt:tableView];
                break;

            case CWUBCellType_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:
                view = [self func_CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:tableView];
                break;

            case CWUBCellType_IconTitleLeft_IconTitleRight:
                view = [self func_CWUBCell_IconTitleLeft_IconTitleRight:tableView];
                break;

            case CWUBCellType_TitleIconLeft_IconCenter_IconTitleRight:
                view = [self func_CWUBCell_TitleIconLeft_IconCenter_IconTitleRight:tableView];
                break;

            case CWUBCellType_CharterDiscount:
                view = [self func_CWUBCell_CharterDiscount:tableView];
                break;

            default:
                break;
        }
    }

    return view;

}

- (CWUBCell_TitleLeft_InfoRight*) func_CWUBCell_TitleLeft_InfoRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleILeft_InfoRight";
    CWUBCell_TitleLeft_InfoRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoLeft*) func_CWUBCell_TitleLeft_InfoLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoLeft";
    CWUBCell_TitleLeft_InfoLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoLeft alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleRight_ButtonRight*) func_CWUBCell_TitleRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleRight_ButtonRight";
    CWUBCell_TitleRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleRight_ButtonRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Trip*) func_CWUBCell_Trip:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Trip";
    CWUBCell_Trip *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Trip alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoRight_ButtonRight*) func_CWUBCell_TitleLeft_InfoRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoRight_ButtonRight";
    CWUBCell_TitleLeft_InfoRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoRight_ButtonRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonLeft_TitleLeft*) func_CWUBCell_ButtonLeft_TitleLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonLeft_TitleLeft";
    CWUBCell_ButtonLeft_TitleLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonLeft_TitleLeft alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger*) func_CWUBCell_Passenger:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger";
    CWUBCell_Passenger *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger_Delete*) func_CWUBCell_Passenger_Delete:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger_Delete";
    CWUBCell_Passenger_Delete *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger_Delete alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger_Opt*) func_CWUBCell_Passenger_Opt:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger_Opt";
    CWUBCell_Passenger_Opt *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger_Opt alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoLeft_ButtonRight*) func_CWUBCell_TitleLeft_InfoLeft_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoLeft_ButtonRight";
    CWUBCell_TitleLeft_InfoLeft_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoLeft_ButtonRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Address*) func_CWUBCell_Address:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Address";
    CWUBCell_Address *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Address alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InputLeft*) func_CWUBCell_TitleLeft_InputLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InputLeft";
    CWUBCell_TitleLeft_InputLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InputLeft alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonRight_TitleRight_ButtonRight*) func_CWUBCell_ButtonRight_TitleRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonRight_TitleRight_ButtonRight";
    CWUBCell_ButtonRight_TitleRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonRight_TitleRight_ButtonRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Refund*) func_CWUBCell_Refund:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Refund";
    CWUBCell_Refund *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Refund alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ImgLeft_TitleLeft_InfoRight*) func_CWUBCell_ImgLeft_TitleLeft_InfoRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ImgLeft_TitleLeft_InfoRight";
    CWUBCell_ImgLeft_TitleLeft_InfoRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ImgLeft_TitleLeft_InfoRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonRight_SpaceBottom*) func_CWUBCell_ButtonRight_SpaceBottom:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonRight_SpaceBottom";
    CWUBCell_ButtonRight_SpaceBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonRight_SpaceBottom alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight*) func_CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight";
    CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_SwithRight*) func_CWUBCell_TitleLeft_SwithRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_SwithRight";
    CWUBCell_TitleLeft_SwithRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_SwithRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Address_ArrowRight*) func_CWUBCell_Address_ArrowRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Address_ArrowRight";
    CWUBCell_Address_ArrowRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Address_ArrowRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_CharterDetail_Opt*) func_CWUBCell_CharterDetail_Opt:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_CharterDetail_Opt";
    CWUBCell_CharterDetail_Opt *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_CharterDetail_Opt alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight*) func_CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight";
    CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconTitleLeft_IconTitleRight*) func_CWUBCell_IconTitleLeft_IconTitleRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconTitleLeft_IconTitleRight";
    CWUBCell_IconTitleLeft_IconTitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconTitleLeft_IconTitleRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}


- (CWUBCell_TitleIconLeft_IconCenter_IconTitleRight*) func_CWUBCell_TitleIconLeft_IconCenter_IconTitleRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleIconLeft_IconCenter_IconTitleRight";
    CWUBCell_TitleIconLeft_IconCenter_IconTitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleIconLeft_IconCenter_IconTitleRight alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}


- (CWUBCell_CharterDiscount*) func_CWUBCell_CharterDiscount:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_CharterDiscount";
    CWUBCell_CharterDiscount *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_CharterDiscount alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}



#pragma mark - 参数设置

- (float) m_margin_topOrBottom{

    if (!_m_margin_topOrBottom ||
        _m_margin_topOrBottom <= 0.) {
        _m_margin_topOrBottom = CWUBBaseViewConfig_Space_Side_Vertical;
    }

    return _m_margin_topOrBottom;
}

- (float) m_margin_leftOrRight{

    if (!_m_margin_leftOrRight ||
        _m_margin_leftOrRight <= 0.) {
        _m_margin_leftOrRight = CWUBBaseViewConfig_Space_Side_Horizontal;
    }

    return _m_margin_leftOrRight;
}
@end
