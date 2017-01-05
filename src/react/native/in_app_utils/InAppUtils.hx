package react.native.in_app_utils;

import js.Error;

#if ios
@:jsRequire("react-native", "NativeModules.InAppUtils")
extern class InAppUtils {
	static function loadProducts(productIds:Array<String>, cb:Error->Array<Product>->Void):Void;
	static function purchaseProduct(productId:String, cb:Error->PurchaseResult->Void):Void;
	static function restorePurchases(cb:Error->RestoreResult->Void):Void;
	static function receiptData(cb:Error->String->Void):Void;
}

typedef Product = {
	identifier:String,
	price:Float,
	currencySymbol:String,
	currencyCode:String,
	priceString:String,
	downloadable:Bool,
	description:String,
	title:String,
}

typedef PurchaseResult = {
	transactionIdentifier:String,
	productIdentifier:String,
}
typedef RestoreResult = {
	originalTransactionIdentifier:String,
	transactionIdentifier:String,
	productIdentifier:String,

}
#end