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
#import "CWUBCell_TitleLeft_ButtonRight.h"
#import "CWUBCell_TitleCenter.h"
#import "CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight.h"
#import "CWUBCell_ImgCenter.h"
#import "CWUBCell_ImgLeft_TitleRightThree.h"
#import "CWUBCell_TitleLeft_TitleRight.h"
#import "CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo.h"
#import "CWUBCell_WebImgStretch.h"
#import "CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.h"
#import "CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom.h"
#import "CWUBCell_Company_One.h"
#import "CWUBCell_MyFollow_MyBusiness.h"
#import "CWUBCell_ImgCenter_TitleCenter.h"
#import "CWUBCell_TitleLeft_CollectionRight_ImgRight.h"
#import "CWUBCell_SevenImg.h"

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

            case CWUBCellType_TitleCenter:
                view = [self func_CWUBCell_TitleCenter:tableView];
                break;

            case CWUBCellType_TitleLeft_ButtonRight:
                view = [self func_CWUBCell_TitleLeft_ButtonRight:tableView];
                break;

            case CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight:
                view = [self func_CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight:tableView];
                break;

            case CWUBCellType_ImgCenter:
                view = [self func_CWUBCell_ImgCenter:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleRightThree:
                view = [self func_CWUBCell_ImgLeft_TitleRightThree:tableView];
                break;

            case CWUBCellType_TitleLeft_TitleRight:
                view = [self func_CWUBCell_TitleLeft_TitleRight:tableView];
                break;

            case CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo:
                view = [self func_CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo:tableView];
                break;

            case CWUBCellType_WebImgStretch:
                view = [self func_CWUBCell_WebImgStretch:tableView];
                break;

            case CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom:
                view = [self func_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom:tableView];
                break;

            case CWUBCellType_ImgTop_TitleCenter_TitleTitleImgBottom:
                view = [self func_CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom:tableView];
                break;

            case CWUBCellType_Company_One:
                view = [self func_CWUBCell_Company_One:tableView];
                break;

            case CWUBCellType_MyFollow_MyBusiness:
                view = [self func_CWUBCell_MyFollow_MyBusiness:tableView];
                break;

            case CWUBCellType_ImgCenter_TitleCenter:
                view = [self func_CWUBCell_ImgCenter_TitleCenter:tableView];
                break;

            case CWUBCellType_TitleLeft_CollectionRight_ImgRight:
                view = [self func_CWUBCell_TitleLeft_CollectionRight_ImgRight:tableView];
                break;

            case CWUBCellType_SevenImg:
                view = [self func_CWUBCell_SevenImg:tableView];
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
        cell = [[CWUBCell_TitleLeft_InfoRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoLeft*) func_CWUBCell_TitleLeft_InfoLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoLeft";
    CWUBCell_TitleLeft_InfoLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoLeft alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleRight_ButtonRight*) func_CWUBCell_TitleRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleRight_ButtonRight";
    CWUBCell_TitleRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleRight_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Trip*) func_CWUBCell_Trip:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Trip";
    CWUBCell_Trip *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Trip alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoRight_ButtonRight*) func_CWUBCell_TitleLeft_InfoRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoRight_ButtonRight";
    CWUBCell_TitleLeft_InfoRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoRight_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonLeft_TitleLeft*) func_CWUBCell_ButtonLeft_TitleLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonLeft_TitleLeft";
    CWUBCell_ButtonLeft_TitleLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonLeft_TitleLeft alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger*) func_CWUBCell_Passenger:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger";
    CWUBCell_Passenger *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger_Delete*) func_CWUBCell_Passenger_Delete:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger_Delete";
    CWUBCell_Passenger_Delete *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger_Delete alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Passenger_Opt*) func_CWUBCell_Passenger_Opt:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Passenger_Opt";
    CWUBCell_Passenger_Opt *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Passenger_Opt alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InfoLeft_ButtonRight*) func_CWUBCell_TitleLeft_InfoLeft_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InfoLeft_ButtonRight";
    CWUBCell_TitleLeft_InfoLeft_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InfoLeft_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Address*) func_CWUBCell_Address:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Address";
    CWUBCell_Address *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Address alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_InputLeft*) func_CWUBCell_TitleLeft_InputLeft:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_InputLeft";
    CWUBCell_TitleLeft_InputLeft *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_InputLeft alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonRight_TitleRight_ButtonRight*) func_CWUBCell_ButtonRight_TitleRight_ButtonRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonRight_TitleRight_ButtonRight";
    CWUBCell_ButtonRight_TitleRight_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonRight_TitleRight_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Refund*) func_CWUBCell_Refund:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Refund";
    CWUBCell_Refund *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Refund alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ImgLeft_TitleLeft_InfoRight*) func_CWUBCell_ImgLeft_TitleLeft_InfoRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ImgLeft_TitleLeft_InfoRight";
    CWUBCell_ImgLeft_TitleLeft_InfoRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ImgLeft_TitleLeft_InfoRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_ButtonRight_SpaceBottom*) func_CWUBCell_ButtonRight_SpaceBottom:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_ButtonRight_SpaceBottom";
    CWUBCell_ButtonRight_SpaceBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_ButtonRight_SpaceBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight*) func_CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight";
    CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleLeft_SwithRight*) func_CWUBCell_TitleLeft_SwithRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleLeft_SwithRight";
    CWUBCell_TitleLeft_SwithRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleLeft_SwithRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_Address_ArrowRight*) func_CWUBCell_Address_ArrowRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_Address_ArrowRight";
    CWUBCell_Address_ArrowRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_Address_ArrowRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_CharterDetail_Opt*) func_CWUBCell_CharterDetail_Opt:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_CharterDetail_Opt";
    CWUBCell_CharterDetail_Opt *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_CharterDetail_Opt alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight*) func_CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight";
    CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconTitleLeft_InfoBottomLeft_IconTitleRight_InfoBottomRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_IconTitleLeft_IconTitleRight*) func_CWUBCell_IconTitleLeft_IconTitleRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_IconTitleLeft_IconTitleRight";
    CWUBCell_IconTitleLeft_IconTitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_IconTitleLeft_IconTitleRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}


- (CWUBCell_TitleIconLeft_IconCenter_IconTitleRight*) func_CWUBCell_TitleIconLeft_IconCenter_IconTitleRight:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_TitleIconLeft_IconCenter_IconTitleRight";
    CWUBCell_TitleIconLeft_IconCenter_IconTitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_TitleIconLeft_IconCenter_IconTitleRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}


- (CWUBCell_CharterDiscount*) func_CWUBCell_CharterDiscount:(UITableView*)tableView{

    static NSString *identify = @"CWUBCell_CharterDiscount";
    CWUBCell_CharterDiscount *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[CWUBCell_CharterDiscount alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
    }

    return cell;
}

- (CWUBCell_TitleCenter*) func_CWUBCell_TitleCenter:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleCenter";
        CWUBCell_TitleCenter *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleCenter alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;
    }else{
        return [[CWUBCell_TitleCenter alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_ButtonRight*) func_CWUBCell_TitleLeft_ButtonRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_ButtonRight";
        CWUBCell_TitleLeft_ButtonRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_ButtonRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_ButtonRight alloc] initWithModel:self];
    }

}


- (CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight*) func_CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight";
        CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgCenter*) func_CWUBCell_ImgCenter:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgCenter";
        CWUBCell_ImgCenter *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgCenter alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgCenter alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgLeft_TitleRightThree*) func_CWUBCell_ImgLeft_TitleRightThree:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgLeft_TitleRightThree";
        CWUBCell_ImgLeft_TitleRightThree *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgLeft_TitleRightThree alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgLeft_TitleRightThree alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_TitleRight*) func_CWUBCell_TitleLeft_TitleRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_TitleRight";
        CWUBCell_TitleLeft_TitleRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_TitleRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_TitleRight alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo*) func_CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo";
        CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo alloc] initWithModel:self];
    }

}

- (CWUBCell_WebImgStretch*) func_CWUBCell_WebImgStretch:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_WebImgStretch";
        CWUBCell_WebImgStretch *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_WebImgStretch alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_WebImgStretch alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom*) func_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom";
        CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom*) func_CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom";
        CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom alloc] initWithModel:self];
    }

}

- (CWUBCell_Company_One*) func_CWUBCell_Company_One:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_Company_One";
        CWUBCell_Company_One *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_Company_One alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_Company_One alloc] initWithModel:self];
    }

}

- (CWUBCell_MyFollow_MyBusiness*) func_CWUBCell_MyFollow_MyBusiness:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_MyFollow_MyBusiness";
        CWUBCell_MyFollow_MyBusiness *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_MyFollow_MyBusiness alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_MyFollow_MyBusiness alloc] initWithModel:self];
    }

}

- (CWUBCell_ImgCenter_TitleCenter*) func_CWUBCell_ImgCenter_TitleCenter:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_ImgCenter_TitleCenter";
        CWUBCell_ImgCenter_TitleCenter *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_ImgCenter_TitleCenter alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_ImgCenter_TitleCenter alloc] initWithModel:self];
    }

}

- (CWUBCell_TitleLeft_CollectionRight_ImgRight*) func_CWUBCell_TitleLeft_CollectionRight_ImgRight:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_TitleLeft_CollectionRight_ImgRight";
        CWUBCell_TitleLeft_CollectionRight_ImgRight *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_TitleLeft_CollectionRight_ImgRight alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_TitleLeft_CollectionRight_ImgRight alloc] initWithModel:self];
    }

}

- (CWUBCell_SevenImg*) func_CWUBCell_SevenImg:(UITableView*)tableView{

    if (tableView) {
        static NSString *identify = @"CWUBCell_SevenImg";
        CWUBCell_SevenImg *cell = [tableView dequeueReusableCellWithIdentifier:identify];
        if (!cell) {
            cell = [[CWUBCell_SevenImg alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify model:self];
        }

        return cell;

    }else{
        return [[CWUBCell_SevenImg alloc] initWithModel:self];
    }

}



#pragma mark - 参数设置

- (UIColor*)m_color_backGround{

    if (!_m_color_backGround) {
        _m_color_backGround = [UIColor clearColor];
    }

    return _m_color_backGround;
}

- (CWUBBottomLineInfo*)m_bottomLineInfo{

    if (!_m_bottomLineInfo) {
        _m_bottomLineInfo = [CWUBBottomLineInfo new];
    }

    return _m_bottomLineInfo;
}

@end
