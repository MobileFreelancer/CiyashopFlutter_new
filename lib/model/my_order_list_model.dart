import 'dart:convert';

MyOrderListModel myOrderListModelFromJson(String str) => MyOrderListModel.fromJson(json.decode(str));

String myOrderListModelToJson(MyOrderListModel data) => json.encode(data.toJson());

class MyOrderListModel {
  MyOrderListModel({
    this.id,
    this.parentId,
    this.number,
    this.orderKey,
    this.createdVia,
    this.version,
    this.status,
    this.currency,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.discountTotal,
    this.discountTax,
    this.shippingTotal,
    this.shippingTax,
    this.cartTax,
    this.total,
    this.totalTax,
    this.pricesIncludeTax,
    this.customerId,
    this.customerIpAddress,
    this.customerUserAgent,
    this.customerNote,
    this.billing,
    this.shipping,
    this.paymentMethod,
    this.paymentMethodTitle,
    this.transactionId,
    this.datePaid,
    this.datePaidGmt,
    this.dateCompleted,
    this.dateCompletedGmt,
    this.cartHash,
    this.metaData,
    this.lineItems,
    this.taxLines,
    this.shippingLines,
    // this.feeLines,
    // this.couponLines,
    // this.refunds,
    // this.orderTrackingData,
  });

  MyOrderListModel.fromJson(dynamic json) {
    id = json['id'];
    parentId = json['parent_id'];
    number = json['number'];
    orderKey = json['order_key'];
    createdVia = json['created_via'];
    version = json['version'];
    status = json['status'];
    currency = json['currency'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    discountTotal = json['discount_total'];
    discountTax = json['discount_tax'];
    shippingTotal = json['shipping_total'];
    shippingTax = json['shipping_tax'];
    cartTax = json['cart_tax'];
    total = json['total'];
    totalTax = json['total_tax'];
    pricesIncludeTax = json['prices_include_tax'];
    customerId = json['customer_id'];
    customerIpAddress = json['customer_ip_address'];
    customerUserAgent = json['customer_user_agent'];
    customerNote = json['customer_note'];
    billing = json['billing'] != null ? Billing.fromJson(json['billing']) : null;
    shipping = json['shipping'] != null ? Shipping.fromJson(json['shipping']) : null;
    paymentMethod = json['payment_method'];
    paymentMethodTitle = json['payment_method_title'];
    transactionId = json['transaction_id'];
    datePaid = json['date_paid'];
    datePaidGmt = json['date_paid_gmt'];
    dateCompleted = json['date_completed'];
    dateCompletedGmt = json['date_completed_gmt'];
    cartHash = json['cart_hash'];
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    if (json['line_items'] != null) {
      lineItems = [];
      json['line_items'].forEach((v) {
        lineItems?.add(LineItems.fromJson(v));
      });
    }
    if (json['tax_lines'] != null) {
      taxLines = [];
      json['tax_lines'].forEach((v) {
        taxLines?.add(TaxLines.fromJson(v));
      });
    }
    if (json['shipping_lines'] != null) {
      shippingLines = [];
      json['shipping_lines'].forEach((v) {
        shippingLines?.add(ShippingLine.fromJson(v));
      });
    }
    // if (json['fee_lines'] != null) {
    //   feeLines = [];
    //   json['fee_lines'].forEach((v) {
    //     feeLines?.add([]);
    //   });
    // }
    // if (json['coupon_lines'] != null) {
    //   couponLines = [];
    //   json['coupon_lines'].forEach((v) {
    //     couponLines?.add([]);
    //   });
    // }
    // if (json['refunds'] != null) {
    //   refunds = [];
    //   json['refunds'].forEach((v) {
    //     refunds?.add([]);
    //   });
    // }
    // if (json['order_tracking_data'] != null) {
    //   orderTrackingData = [];
    //   json['order_tracking_data'].forEach((v) {
    //     orderTrackingData?.add([]);
    //   });
    // }
  }

  int? id;
  int? parentId;
  String? number;
  String? orderKey;
  String? createdVia;
  String? version;
  String? status;
  String? currency;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? discountTotal;
  String? discountTax;
  String? shippingTotal;
  String? shippingTax;
  String? cartTax;
  String? total;
  String? totalTax;
  bool? pricesIncludeTax;
  int? customerId;
  String? customerIpAddress;
  String? customerUserAgent;
  String? customerNote;
  Billing? billing;
  Shipping? shipping;
  String? paymentMethod;
  String? paymentMethodTitle;
  String? transactionId;
  dynamic datePaid;
  dynamic datePaidGmt;
  dynamic dateCompleted;
  dynamic dateCompletedGmt;
  String? cartHash;
  List<MetaData>? metaData;
  List<LineItems>? lineItems;
  List<TaxLines>? taxLines;
  List<ShippingLine>? shippingLines;
  // List<Object>? feeLines;
  // List<Object>? couponLines;
  // List<Object>? refunds;
  // List<Object>? orderTrackingData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['parent_id'] = parentId;
    map['number'] = number;
    map['order_key'] = orderKey;
    map['created_via'] = createdVia;
    map['version'] = version;
    map['status'] = status;
    map['currency'] = currency;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['discount_total'] = discountTotal;
    map['discount_tax'] = discountTax;
    map['shipping_total'] = shippingTotal;
    map['shipping_tax'] = shippingTax;
    map['cart_tax'] = cartTax;
    map['total'] = total;
    map['total_tax'] = totalTax;
    map['prices_include_tax'] = pricesIncludeTax;
    map['customer_id'] = customerId;
    map['customer_ip_address'] = customerIpAddress;
    map['customer_user_agent'] = customerUserAgent;
    map['customer_note'] = customerNote;
    if (billing != null) {
      map['billing'] = billing?.toJson();
    }
    if (shipping != null) {
      map['shipping'] = shipping?.toJson();
    }
    map['payment_method'] = paymentMethod;
    map['payment_method_title'] = paymentMethodTitle;
    map['transaction_id'] = transactionId;
    map['date_paid'] = datePaid;
    map['date_paid_gmt'] = datePaidGmt;
    map['date_completed'] = dateCompleted;
    map['date_completed_gmt'] = dateCompletedGmt;
    map['cart_hash'] = cartHash;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    if (lineItems != null) {
      map['line_items'] = lineItems?.map((v) => v.toJson()).toList();
    }
    if (taxLines != null) {
      map['tax_lines'] = taxLines?.map((v) => v.toJson()).toList();
    }
    if (shippingLines != null) {
      map['shipping_lines'] = shippingLines?.map((v) => v.toJson()).toList();
    }
    // if (feeLines != null) {
    //   map['fee_lines'] = feeLines?.map((v) => []).toList();
    // }
    // if (couponLines != null) {
    //   map['coupon_lines'] = couponLines?.map((v) => []).toList();
    // }
    // if (refunds != null) {
    //   map['refunds'] = refunds?.map((v) => []).toList();
    // }
    // if (orderTrackingData != null) {
    //   map['order_tracking_data'] = orderTrackingData?.map((v) => []).toList();
    // }
    return map;
  }
}

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());
class LineItems {
  LineItems({
    this.id,
    this.name,
    this.productId,
    this.variationId,
    this.quantity,
    this.taxClass,
    this.subtotal,
    this.subtotalTax,
    this.total,
    this.totalTax,
    this.taxes,
    this.metaData,
    this.sku,
    this.price,
    this.productImage,
  });

  LineItems.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    productId = json['product_id'];
    variationId = json['variation_id'];
    quantity = json['quantity'];
    taxClass = json['tax_class'];
    subtotal = json['subtotal'];
    subtotalTax = json['subtotal_tax'];
    total = json['total'];
    totalTax = json['total_tax'];
    if (json['taxes'] != null) {
      taxes = [];
      json['taxes'].forEach((v) {
        taxes?.add(TaxLines.fromJson(v));
      });
    }
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    sku = json['sku'];
    price = json['price'];
    productImage = json['product_image'];
  }

  int? id;
  String? name;
  int? productId;
  int? variationId;
  int? quantity;
  String? taxClass;
  String? subtotal;
  String? subtotalTax;
  String? total;
  String? totalTax;
  List<TaxLines>? taxes;
  List<dynamic>? metaData;
  String? sku;
  int? price;
  String? productImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['product_id'] = productId;
    map['variation_id'] = variationId;
    map['quantity'] = quantity;
    map['tax_class'] = taxClass;
    map['subtotal'] = subtotal;
    map['subtotal_tax'] = subtotalTax;
    map['total'] = total;
    map['total_tax'] = totalTax;
    if (taxes != null) {
      map['taxes'] = taxes?.map((v) => v.toJson()).toList();
    }
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['sku'] = sku;
    map['price'] = price;
    map['product_image'] = productImage;
    return map;
  }
}

TaxLines taxLinesFromJson(String str) => TaxLines.fromJson(json.decode(str));

String taxLinesToJson(TaxLines data) => json.encode(data.toJson());

class TaxLines {
  TaxLines({
    this.id,
    this.rateCode,
    this.rateId,
    this.label,
    this.compound,
    this.taxTotal,
    this.shippingTaxTotal,
    this.metaData,
  });

  TaxLines.fromJson(dynamic json) {
    id = json['id'];
    rateCode = json['rate_code'];
    rateId = json['rate_id'];
    label = json['label'];
    compound = json['compound'];
    taxTotal = json['taxTotal'];
    shippingTaxTotal = json['shipping_tax_total'];
    metaData = json['meta_data'];
  }

  int? id;
  String? rateCode;
  int? rateId;
  int? label;
  int? compound;
  String? taxTotal;
  String? shippingTaxTotal;
  String? metaData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['rate_code'] = rateCode;
    map['rate_id'] = rateId;
    map['label'] = label;
    map['compound'] = compound;
    map['taxTotal'] = taxTotal;
    map['shipping_tax_total'] = shippingTaxTotal;
    map['meta_data'] = metaData;
    return map;
  }
}


ShippingLine shippingLinesFromJson(String str) => ShippingLine.fromJson(json.decode(str));

String shippingLinesToJson(ShippingLine data) => json.encode(data.toJson());

class ShippingLine {
  ShippingLine({
    this.id,
    this.methodTitle,
    this.methodId,
    this.total,
    this.totalTax,
    this.taxes,
  });

  ShippingLine.fromJson(dynamic json) {
    id = json['id'];
    methodTitle = json['method_title'];
    methodId = json['method_id'];
    total = json['total'];
    totalTax = json['total_tax'];
    taxes = json['taxes'];
  }

  int? id;
  String? methodTitle;
  int? methodId;
  int? total;
  int? totalTax;
  List<Taxess>? taxes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['method_title'] = methodTitle;
    map['method_id'] = methodId;
    map['total'] = total;
    map['total_tax'] = totalTax;
    map['taxes'] = taxes;
    return map;
  }
}

Taxess taxessLinesFromJson(String str) => Taxess.fromJson(json.decode(str));

String taxessLinesToJson(Taxess data) => json.encode(data.toJson());

class Taxess {
  Taxess({
    this.id,
    this.total,
    this.subtotal,
  });

  Taxess.fromJson(dynamic json) {
    id = json['id'];
    total = json['total'];
    subtotal = json['subtotal'];
  }

  int? id;
  String? total;
  String? subtotal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['total'] = total;
    map['subtotal'] = subtotal;
    return map;
  }
}

MetaData metaDataFromJson(String str) => MetaData.fromJson(json.decode(str));

String metaDataToJson(MetaData data) => json.encode(data.toJson());

class MetaData {
  MetaData({
    this.id,
    this.key,
    this.value,
  });

  MetaData.fromJson(dynamic json) {
    id = json['id'];
    key = json['key'];
    value = json['value'];
  }

  int? id;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

Shipping shippingFromJson(String str) => Shipping.fromJson(json.decode(str));

String shippingToJson(Shipping data) => json.encode(data.toJson());

class Shipping {
  Shipping({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.phone,
  });

  Shipping.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    phone = json['phone'];
  }

  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['company'] = company;
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['state'] = state;
    map['postcode'] = postcode;
    map['country'] = country;
    map['phone'] = phone;
    return map;
  }
}

Billing billingFromJson(String str) => Billing.fromJson(json.decode(str));

String billingToJson(Billing data) => json.encode(data.toJson());

class Billing {
  Billing({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  Billing.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    email = json['email'];
    phone = json['phone'];
  }

  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? email;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['company'] = company;
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['state'] = state;
    map['postcode'] = postcode;
    map['country'] = country;
    map['email'] = email;
    map['phone'] = phone;
    return map;
  }
}
