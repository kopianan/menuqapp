import 'package:feroza/domain/menu/menu_data.dart';
import 'package:feroza/infrastructure/core/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:get/get.dart';

class MenuSingleListItem extends StatelessWidget {
  const MenuSingleListItem({
    Key key,
    @required this.menuClassData,
  }) : super(key: key);

  final MenuClassData menuClassData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/item_detail', arguments: menuClassData);
      },
      child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(menuClassData.mediumUrl))),
                ),
                flex: 4,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Flex(
                    mainAxisSize: MainAxisSize.max,
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          menuClassData.name,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          Formatter().formatCurrency(
                              double.parse(menuClassData.price)),
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          menuClassData.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 7,
              )
            ],
          )),
    );
  }
}
