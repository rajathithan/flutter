import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter/cupertino.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = "USD";

  List<DropdownMenuItem<String>> getCurrencyListItems() {
    List<DropdownMenuItem<String>> androidItems = [];
    for (String currencyItem in currenciesList) {
      androidItems.add(DropdownMenuItem<String>(
        value: currencyItem,
        child: Text(currencyItem),
      ));
    }
    return androidItems;
  }

  List<Text> getCupertinoItems() {
    List<Text> iphoneItems = [];
    for (String currencyItem in currenciesList) {
      iphoneItems.add(Text(currencyItem));
    }
    return iphoneItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: CupertinoPicker(
              itemExtent: 30,
              looping: true,
              magnification: 1.25,
              backgroundColor: Colors.lightBlue,
              children: getCupertinoItems(),
              onSelectedItemChanged: (index) {
                setState(() {
                  print(currenciesList[index]);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
/**
 * DropdownButton<String>(
    icon: Icon(Icons.monetization_on_sharp),
    menuMaxHeight: 250,
    isExpanded: true,
    enableFeedback: true,
    value: selectedCurrency,
    items: getCurrencyListItems(),
    onChanged: (value) {
    setState(() {
    selectedCurrency = value;
    });
    },
    ),
 */
