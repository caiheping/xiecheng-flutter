import 'package:flutter_app/model/common_model.dart';
import 'package:flutter_app/model/config_model.dart';
import 'package:flutter_app/model/grid_nav_model.dart';
import 'package:flutter_app/model/sales_box_model.dart';

class HomeModel {
  final ConfigModel config;
  final List<CommonModel> bannerList;
  final List<CommonModel> localNavList;
  final List<CommonModel> subNavList;
  final GridNavModel gridNav;
  final SalesBoxModel salesBox;

  HomeModel({this.config, this.bannerList, this.localNavList, this.subNavList, this.gridNav, this.salesBox});

  factory HomeModel.fromJson(Map<String, dynamic>json){
    var localNavListJson = json['localNavList'] as List;
    List<CommonModel> localNavList = localNavListJson.map((i) => CommonModel.fromJson(i)).toList();
    var bannerListJson = json['bannerList'] as List;
    List<CommonModel> bannerList = bannerListJson.map((i) => CommonModel.fromJson(i)).toList();
    var subNavListJson = json['subNavList'] as List;
    List<CommonModel> subNavList = subNavListJson.map((i) => CommonModel.fromJson(i)).toList();

    var config = ConfigModel.fromJson(json['config']);
    var gridNav = GridNavModel.fromJson(json['gridNav']);
    var salesBox = SalesBoxModel.fromJson(json['salesBox']);
    return HomeModel(
      localNavList: localNavList,
      bannerList: bannerList,
      subNavList: subNavList,
      config: config,
      gridNav: gridNav,
      salesBox: salesBox,
    );
  }
}