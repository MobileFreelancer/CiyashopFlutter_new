import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
    this.pgsWooApiHomeLayout,
    this.pgsWooApiScrollIsLogin,
    this.pgsWooApiScrollIsSlider,
    this.pgsWooApiAddToCartOption,
    this.pgsWooApiCatalogModeOption,
    this.appLogoLight,
    this.appLogo,
    this.mainCategory,
    this.mainSlider,
    this.categoryBanners,
    this.productsCarousel,
    this.bannerAd,
    this.featureBoxStatus,
    this.featureBoxHeading,
    this.featureBox,
    this.staticPage,
    this.infoPages,
    this.pgsAppSocialLinks,
    this.pgsAppContactInfo,
    this.pgsApiIsWpml,
    this.productBannersCatValue,
    this.productBannersTitle,
    this.customSection,
    this.pgsApiFilters,
    this.deleteAccountAlertTitle,
    this.deleteAccountAlertMessage,
    this.productsViewOrders,
    this.allCategories,
    this.isWishlistActive,
    this.isCurrencySwitcherActive,
    this.isYithFeaturedVideoActive,
    this.isOrderTrackingActive,
    this.isRewardPointsActive,
    this.isGuestCheckoutActive,
    this.isWpmlActive,
    this.priceFormateOptions,
    this.iosAppUrl,
    this.siteLanguage,
    this.wpmlLanguages,
    this.pgsWooApiDeliverPincode,
    this.pgsWooApiWebViewPages,
    this.checkoutRedirectUrl,
    this.appColor,
    this.wcTaxEnabled,
    this.woocommerceTaxDisplayShop,
    this.woocommerceTaxDisplayCart,
    this.woocommercePriceDisplaySuffix,
    this.woocommerceTaxTotalDisplay,
    this.isRtl,
    this.isAppValidation,
    this.woocommerceReviewRatingVerificationRequired,
    this.woocommerceEnableReviews,
    this.isTerawalletActive,
    this.isVerified,
    this.isUserExists,
  });

  HomeModel.fromJson(dynamic json) {
    pgsWooApiHomeLayout = json['pgs_woo_api_home_layout'];
    pgsWooApiScrollIsLogin = json['pgs_woo_api_scroll_is_login'];
    pgsWooApiScrollIsSlider = json['pgs_woo_api_scroll_is_slider'];
    pgsWooApiAddToCartOption = json['pgs_woo_api_add_to_cart_option'];
    pgsWooApiCatalogModeOption = json['pgs_woo_api_catalog_mode_option'];
    appLogoLight = json['app_logo_light'];
    appLogo = json['app_logo'];
    if (json['main_category'] != null) {
      mainCategory = [];
      json['main_category'].forEach((v) {
        mainCategory?.add(MainCategory.fromJson(v));
      });
    }
    if (json['main_slider'] != null) {
      mainSlider = [];
      json['main_slider'].forEach((v) {
        mainSlider?.add(MainSlider.fromJson(v));
      });
    }
    if (json['category_banners'] != null) {
      categoryBanners = [];
      json['category_banners'].forEach((v) {
        categoryBanners?.add(CategoryBanners.fromJson(v));
      });
    }
    productsCarousel = json['products_carousel'] != null ? ProductsCarousel.fromJson(json['products_carousel']) : null;
    if (json['banner_ad'] != null) {
      bannerAd = [];
      json['banner_ad'].forEach((v) {
        bannerAd?.add(BannerAd.fromJson(v));
      });
    }
    featureBoxStatus = json['feature_box_status'];
    featureBoxHeading = json['feature_box_heading'];
    if (json['feature_box'] != null) {
      featureBox = [];
      json['feature_box'].forEach((v) {
        featureBox?.add(FeatureBox.fromJson(v));
      });
    }
    staticPage = json['static_page'] != null ? StaticPage.fromJson(json['static_page']) : null;
    if (json['info_pages'] != null) {
      infoPages = [];
      json['info_pages'].forEach((v) {
        infoPages?.add(InfoPages.fromJson(v));
      });
    }
    pgsAppSocialLinks =
        json['pgs_app_social_links'] != null ? PgsAppSocialLinks.fromJson(json['pgs_app_social_links']) : null;
    pgsAppContactInfo =
        json['pgs_app_contact_info'] != null ? PgsAppContactInfo.fromJson(json['pgs_app_contact_info']) : null;
    pgsApiIsWpml = json['pgs_api_is_wpml'];
    productBannersCatValue = json['product_banners_cat_value'];
    productBannersTitle = json['product_banners_title'];
    if (json['custom_section'] != null) {
      customSection = [];
      json['custom_section'].forEach((v) {
        customSection?.add(CustomSection.fromJson(v));
      });
    }
    pgsApiFilters = json['pgs_api_filters'] != null ? PgsApiFilters.fromJson(json['pgs_api_filters']) : null;
    deleteAccountAlertTitle = json['delete_account_alert_title'];
    deleteAccountAlertMessage = json['delete_account_alert_message'];
    if (json['products_view_orders'] != null) {
      productsViewOrders = [];
      json['products_view_orders'].forEach((v) {
        productsViewOrders?.add(ProductsViewOrders.fromJson(v));
      });
    }
    if (json['all_categories'] != null) {
      allCategories = [];
      json['all_categories'].forEach((v) {
        allCategories?.add(AllCategories.fromJson(v));
      });
    }
    isWishlistActive = json['is_wishlist_active'];
    isCurrencySwitcherActive = json['is_currency_switcher_active'];
    isYithFeaturedVideoActive = json['is_yith_featured_video_active'];
    isOrderTrackingActive = json['is_order_tracking_active'];
    isRewardPointsActive = json['is_reward_points_active'];
    isGuestCheckoutActive = json['is_guest_checkout_active'];
    isWpmlActive = json['is_wpml_active'];
    priceFormateOptions =
        json['price_formate_options'] != null ? PriceFormateOptions.fromJson(json['price_formate_options']) : null;
    iosAppUrl = json['ios_app_url'];
    siteLanguage = json['site_language'];
    if (json['wpml_languages'] != null) {
      wpmlLanguages = [];
      json['wpml_languages'].forEach((v) {
        wpmlLanguages?.add(v.toString());
      });
    }
    pgsWooApiDeliverPincode = json['pgs_woo_api_deliver_pincode'] != null
        ? PgsWooApiDeliverPincode.fromJson(json['pgs_woo_api_deliver_pincode'])
        : null;
    if (json['pgs_woo_api_web_view_pages'] != null) {
      pgsWooApiWebViewPages = [];
      json['pgs_woo_api_web_view_pages'].forEach((v) {
        pgsWooApiWebViewPages?.add(v.toString());
      });
    }
    checkoutRedirectUrl = json['checkout_redirect_url'] != null ? json['checkout_redirect_url'].cast<String>() : [];
    appColor = json['app_color'] != null ? AppColor.fromJson(json['app_color']) : null;
    wcTaxEnabled = json['wc_tax_enabled'];
    woocommerceTaxDisplayShop = json['woocommerce_tax_display_shop'];
    woocommerceTaxDisplayCart = json['woocommerce_tax_display_cart'];
    woocommercePriceDisplaySuffix = json['woocommerce_price_display_suffix'];
    woocommerceTaxTotalDisplay = json['woocommerce_tax_total_display'];
    isRtl = json['is_rtl'];
    isAppValidation = json['is_app_validation'];
    woocommerceReviewRatingVerificationRequired = json['woocommerce_review_rating_verification_required'];
    woocommerceEnableReviews = json['woocommerce_enable_reviews'];
    isTerawalletActive = json['is_terawallet_active'];
    isVerified = json['is_verified'];
    isUserExists = json['is_user_exists'];
  }

  String? pgsWooApiHomeLayout;
  String? pgsWooApiScrollIsLogin;
  String? pgsWooApiScrollIsSlider;
  String? pgsWooApiAddToCartOption;
  String? pgsWooApiCatalogModeOption;
  String? appLogoLight;
  String? appLogo;
  List<MainCategory>? mainCategory;
  List<MainSlider>? mainSlider;
  List<CategoryBanners>? categoryBanners;
  ProductsCarousel? productsCarousel;
  List<BannerAd>? bannerAd;
  String? featureBoxStatus;
  String? featureBoxHeading;
  List<FeatureBox>? featureBox;
  StaticPage? staticPage;
  List<InfoPages>? infoPages;
  PgsAppSocialLinks? pgsAppSocialLinks;
  PgsAppContactInfo? pgsAppContactInfo;
  String? pgsApiIsWpml;
  String? productBannersCatValue;
  String? productBannersTitle;
  List<CustomSection>? customSection;
  PgsApiFilters? pgsApiFilters;
  String? deleteAccountAlertTitle;
  String? deleteAccountAlertMessage;
  List<ProductsViewOrders>? productsViewOrders;
  List<AllCategories>? allCategories;
  bool? isWishlistActive;
  bool? isCurrencySwitcherActive;
  bool? isYithFeaturedVideoActive;
  bool? isOrderTrackingActive;
  bool? isRewardPointsActive;
  bool? isGuestCheckoutActive;
  bool? isWpmlActive;
  PriceFormateOptions? priceFormateOptions;
  String? iosAppUrl;
  String? siteLanguage;
  List<dynamic>? wpmlLanguages;
  PgsWooApiDeliverPincode? pgsWooApiDeliverPincode;
  List<dynamic>? pgsWooApiWebViewPages;
  List<String>? checkoutRedirectUrl;
  AppColor? appColor;
  bool? wcTaxEnabled;
  String? woocommerceTaxDisplayShop;
  String? woocommerceTaxDisplayCart;
  String? woocommercePriceDisplaySuffix;
  String? woocommerceTaxTotalDisplay;
  bool? isRtl;
  bool? isAppValidation;
  String? woocommerceReviewRatingVerificationRequired;
  String? woocommerceEnableReviews;
  bool? isTerawalletActive;
  String? isVerified;
  String? isUserExists;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pgs_woo_api_home_layout'] = pgsWooApiHomeLayout;
    map['pgs_woo_api_scroll_is_login'] = pgsWooApiScrollIsLogin;
    map['pgs_woo_api_scroll_is_slider'] = pgsWooApiScrollIsSlider;
    map['pgs_woo_api_add_to_cart_option'] = pgsWooApiAddToCartOption;
    map['pgs_woo_api_catalog_mode_option'] = pgsWooApiCatalogModeOption;
    map['app_logo_light'] = appLogoLight;
    map['app_logo'] = appLogo;
    if (mainCategory != null) {
      map['main_category'] = mainCategory?.map((v) => v.toJson()).toList();
    }
    if (mainSlider != null) {
      map['main_slider'] = mainSlider?.map((v) => v.toJson()).toList();
    }
    if (categoryBanners != null) {
      map['category_banners'] = categoryBanners?.map((v) => v.toJson()).toList();
    }
    if (productsCarousel != null) {
      map['products_carousel'] = productsCarousel?.toJson();
    }
    if (bannerAd != null) {
      map['banner_ad'] = bannerAd?.map((v) => v.toJson()).toList();
    }
    map['feature_box_status'] = featureBoxStatus;
    map['feature_box_heading'] = featureBoxHeading;
    if (featureBox != null) {
      map['feature_box'] = featureBox?.map((v) => v.toJson()).toList();
    }
    if (staticPage != null) {
      map['static_page'] = staticPage?.toJson();
    }
    if (infoPages != null) {
      map['info_pages'] = infoPages?.map((v) => v.toJson()).toList();
    }
    if (pgsAppSocialLinks != null) {
      map['pgs_app_social_links'] = pgsAppSocialLinks?.toJson();
    }
    if (pgsAppContactInfo != null) {
      map['pgs_app_contact_info'] = pgsAppContactInfo?.toJson();
    }
    map['pgs_api_is_wpml'] = pgsApiIsWpml;
    map['product_banners_cat_value'] = productBannersCatValue;
    map['product_banners_title'] = productBannersTitle;
    if (customSection != null) {
      map['custom_section'] = customSection?.map((v) => v.toJson()).toList();
    }
    if (pgsApiFilters != null) {
      map['pgs_api_filters'] = pgsApiFilters?.toJson();
    }
    map['delete_account_alert_title'] = deleteAccountAlertTitle;
    map['delete_account_alert_message'] = deleteAccountAlertMessage;
    if (productsViewOrders != null) {
      map['products_view_orders'] = productsViewOrders?.map((v) => v.toJson()).toList();
    }
    if (allCategories != null) {
      map['all_categories'] = allCategories?.map((v) => v.toJson()).toList();
    }
    map['is_wishlist_active'] = isWishlistActive;
    map['is_currency_switcher_active'] = isCurrencySwitcherActive;
    map['is_yith_featured_video_active'] = isYithFeaturedVideoActive;
    map['is_order_tracking_active'] = isOrderTrackingActive;
    map['is_reward_points_active'] = isRewardPointsActive;
    map['is_guest_checkout_active'] = isGuestCheckoutActive;
    map['is_wpml_active'] = isWpmlActive;
    if (priceFormateOptions != null) {
      map['price_formate_options'] = priceFormateOptions?.toJson();
    }
    map['ios_app_url'] = iosAppUrl;
    map['site_language'] = siteLanguage;
    if (wpmlLanguages != null) {
      map['wpml_languages'] = wpmlLanguages?.map((v) => v.toJson()).toList();
    }
    if (pgsWooApiDeliverPincode != null) {
      map['pgs_woo_api_deliver_pincode'] = pgsWooApiDeliverPincode?.toJson();
    }
    if (pgsWooApiWebViewPages != null) {
      map['pgs_woo_api_web_view_pages'] = pgsWooApiWebViewPages?.map((v) => v.toJson()).toList();
    }
    map['checkout_redirect_url'] = checkoutRedirectUrl;
    if (appColor != null) {
      map['app_color'] = appColor?.toJson();
    }
    map['wc_tax_enabled'] = wcTaxEnabled;
    map['woocommerce_tax_display_shop'] = woocommerceTaxDisplayShop;
    map['woocommerce_tax_display_cart'] = woocommerceTaxDisplayCart;
    map['woocommerce_price_display_suffix'] = woocommercePriceDisplaySuffix;
    map['woocommerce_tax_total_display'] = woocommerceTaxTotalDisplay;
    map['is_rtl'] = isRtl;
    map['is_app_validation'] = isAppValidation;
    map['woocommerce_review_rating_verification_required'] = woocommerceReviewRatingVerificationRequired;
    map['woocommerce_enable_reviews'] = woocommerceEnableReviews;
    map['is_terawallet_active'] = isTerawalletActive;
    map['is_verified'] = isVerified;
    map['is_user_exists'] = isUserExists;
    return map;
  }
}

AppColor appColorFromJson(String str) => AppColor.fromJson(json.decode(str));

String appColorToJson(AppColor data) => json.encode(data.toJson());

class AppColor {
  AppColor({
    this.primaryColor,
    this.secondaryColor,
    this.headerColor,
  });

  AppColor.fromJson(dynamic json) {
    primaryColor = json['primary_color'];
    secondaryColor = json['secondary_color'];
    headerColor = json['header_color'];
  }

  String? primaryColor;
  String? secondaryColor;
  String? headerColor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary_color'] = primaryColor;
    map['secondary_color'] = secondaryColor;
    map['header_color'] = headerColor;
    return map;
  }
}

PgsWooApiDeliverPincode pgsWooApiDeliverPincodeFromJson(String str) =>
    PgsWooApiDeliverPincode.fromJson(json.decode(str));

String pgsWooApiDeliverPincodeToJson(PgsWooApiDeliverPincode data) => json.encode(data.toJson());

class PgsWooApiDeliverPincode {
  PgsWooApiDeliverPincode({
    this.status,
  });

  PgsWooApiDeliverPincode.fromJson(dynamic json) {
    status = json['status'];
  }

  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }
}

PriceFormateOptions priceFormateOptionsFromJson(String str) => PriceFormateOptions.fromJson(json.decode(str));

String priceFormateOptionsToJson(PriceFormateOptions data) => json.encode(data.toJson());

class PriceFormateOptions {
  PriceFormateOptions({
    this.decimalSeparator,
    this.thousandSeparator,
    this.decimals,
    this.currencyPos,
    this.currencySymbol,
    this.currencyCode,
  });

  PriceFormateOptions.fromJson(dynamic json) {
    decimalSeparator = json['decimal_separator'];
    thousandSeparator = json['thousand_separator'];
    decimals = json['decimals'];
    currencyPos = json['currency_pos'];
    currencySymbol = json['currency_symbol'];
    currencyCode = json['currency_code'];
  }

  String? decimalSeparator;
  String? thousandSeparator;
  int? decimals;
  String? currencyPos;
  String? currencySymbol;
  String? currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['decimal_separator'] = decimalSeparator;
    map['thousand_separator'] = thousandSeparator;
    map['decimals'] = decimals;
    map['currency_pos'] = currencyPos;
    map['currency_symbol'] = currencySymbol;
    map['currency_code'] = currencyCode;
    return map;
  }
}

AllCategories allCategoriesFromJson(String str) => AllCategories.fromJson(json.decode(str));

String allCategoriesToJson(AllCategories data) => json.encode(data.toJson());

class AllCategories {
  AllCategories({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.parent,
    this.productCount,
    this.image,
  });

  AllCategories.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    parent = json['parent'];
    productCount = json['product_count'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }

  int? id;
  String? name;
  String? slug;
  String? description;
  int? parent;
  int? productCount;
  Image? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['description'] = description;
    map['parent'] = parent;
    map['product_count'] = productCount;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    return map;
  }
}

Image imageFromJson(String str) => Image.fromJson(json.decode(str));

String imageToJson(Image data) => json.encode(data.toJson());

class Image {
  Image({
    this.src,
  });

  Image.fromJson(dynamic json) {
    src = json['src'];
  }

  String? src;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['src'] = src;
    return map;
  }
}

ProductsViewOrders productsViewOrdersFromJson(String str) => ProductsViewOrders.fromJson(json.decode(str));

String productsViewOrdersToJson(ProductsViewOrders data) => json.encode(data.toJson());

class ProductsViewOrders {
  ProductsViewOrders({
    this.name,
  });

  ProductsViewOrders.fromJson(dynamic json) {
    name = json['name'];
  }

  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }
}

PgsApiFilters pgsApiFiltersFromJson(String str) => PgsApiFilters.fromJson(json.decode(str));

String pgsApiFiltersToJson(PgsApiFilters data) => json.encode(data.toJson());

class PgsApiFilters {
  PgsApiFilters({
    this.pgsPrice,
    this.paColor,
    this.paSize,
    this.pgsAverageRating,
  });

  PgsApiFilters.fromJson(dynamic json) {
    pgsPrice = json['pgs_price'];
    paColor = json['pa_color'];
    paSize = json['pa_size'];
    pgsAverageRating = json['pgs_average_rating'];
  }

  String? pgsPrice;
  String? paColor;
  String? paSize;
  String? pgsAverageRating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pgs_price'] = pgsPrice;
    map['pa_color'] = paColor;
    map['pa_size'] = paSize;
    map['pgs_average_rating'] = pgsAverageRating;
    return map;
  }
}

CustomSection customSectionFromJson(String str) => CustomSection.fromJson(json.decode(str));

String customSectionToJson(CustomSection data) => json.encode(data.toJson());

class CustomSection {
  CustomSection({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.taxPrice,
    this.priceExcludingTax,
    this.priceIncludingTax,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.inStock,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.appThumbnail,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.rewardsMessage,
    this.additionInfoHtml,
    this.featuredVideo,
    this.image,
    this.title,
    this.rating,
    this.sellerInfo,
  });

  CustomSection.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    permalink = json['permalink'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    type = json['type'];
    status = json['status'];
    featured = json['featured'];
    catalogVisibility = json['catalog_visibility'];
    description = json['description'];
    shortDescription = json['short_description'];
    sku = json['sku'];
    price = json['price'];
    taxPrice = json['tax_price'];
    priceExcludingTax = json['price_excluding_tax'];
    priceIncludingTax = json['price_including_tax'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    dateOnSaleFrom = json['date_on_sale_from'];
    dateOnSaleFromGmt = json['date_on_sale_from_gmt'];
    dateOnSaleTo = json['date_on_sale_to'];
    dateOnSaleToGmt = json['date_on_sale_to_gmt'];
    priceHtml = json['price_html'];
    onSale = json['on_sale'];
    purchasable = json['purchasable'];
    totalSales = json['total_sales'];
    virtual = json['virtual'];
    downloadable = json['downloadable'];
    if (json['downloads'] != null) {
      downloads = [];
      json['downloads'].forEach((v) {
        downloads?.add(v.toString());
      });
    }
    downloadLimit = json['download_limit'];
    downloadExpiry = json['download_expiry'];
    externalUrl = json['external_url'];
    buttonText = json['button_text'];
    taxStatus = json['tax_status'];
    taxClass = json['tax_class'];
    manageStock = json['manage_stock'];
    stockQuantity = json['stock_quantity'];
    inStock = json['in_stock'];
    backorders = json['backorders'];
    backordersAllowed = json['backorders_allowed'];
    backordered = json['backordered'];
    soldIndividually = json['sold_individually'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
    shippingRequired = json['shipping_required'];
    shippingTaxable = json['shipping_taxable'];
    shippingClass = json['shipping_class'];
    shippingClassId = json['shipping_class_id'];
    reviewsAllowed = json['reviews_allowed'];
    averageRating = json['average_rating'];
    ratingCount = json['rating_count'];
    relatedIds = json['related_ids'] != null ? json['related_ids'].cast<int>() : [];
    if (json['upsell_ids'] != null) {
      upsellIds = [];
      json['upsell_ids'].forEach((v) {
        upsellIds?.add(v.toString());
      });
    }
    if (json['cross_sell_ids'] != null) {
      crossSellIds = [];
      json['cross_sell_ids'].forEach((v) {
        crossSellIds?.add(v.toString());
      });
    }
    parentId = json['parent_id'];
    purchaseNote = json['purchase_note'];
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(v.toString());
      });
    }
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    appThumbnail = json['app_thumbnail'];
    if (json['attributes'] != null) {
      attributes = [];
      json['attributes'].forEach((v) {
        attributes?.add(Attributes.fromJson(v));
      });
    }
    if (json['default_attributes'] != null) {
      defaultAttributes = [];
      json['default_attributes'].forEach((v) {
        defaultAttributes?.add(v.toString());
      });
    }
    if (json['variations'] != null) {
      variations = [];
      json['variations'].forEach((v) {
        variations?.add(v.toString());
      });
    }
    if (json['grouped_products'] != null) {
      groupedProducts = [];
      json['grouped_products'].forEach((v) {
        groupedProducts?.add(v.toString());
      });
    }
    menuOrder = json['menu_order'];
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    rewardsMessage = json['rewards_message'];
    additionInfoHtml = json['addition_info_html'];
    featuredVideo = json['featured_video'];
    image = json['image'];
    title = json['title'];
    rating = json['rating'];
    sellerInfo = json['seller_info'] != null ? SellerInfo.fromJson(json['seller_info']) : null;
  }

  int? id;
  String? name;
  String? slug;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? taxPrice;
  String? priceExcludingTax;
  String? priceIncludingTax;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  String? priceHtml;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<dynamic>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  dynamic stockQuantity;
  bool? inStock;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<int>? relatedIds;
  List<dynamic>? upsellIds;
  List<dynamic>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Categories>? categories;
  List<dynamic>? tags;
  List<Images>? images;
  String? appThumbnail;
  List<Attributes>? attributes;
  List<dynamic>? defaultAttributes;
  List<dynamic>? variations;
  List<dynamic>? groupedProducts;
  int? menuOrder;
  List<MetaData>? metaData;
  String? rewardsMessage;
  String? additionInfoHtml;
  dynamic featuredVideo;
  String? image;
  String? title;
  String? rating;
  SellerInfo? sellerInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['permalink'] = permalink;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['type'] = type;
    map['status'] = status;
    map['featured'] = featured;
    map['catalog_visibility'] = catalogVisibility;
    map['description'] = description;
    map['short_description'] = shortDescription;
    map['sku'] = sku;
    map['price'] = price;
    map['tax_price'] = taxPrice;
    map['price_excluding_tax'] = priceExcludingTax;
    map['price_including_tax'] = priceIncludingTax;
    map['regular_price'] = regularPrice;
    map['sale_price'] = salePrice;
    map['date_on_sale_from'] = dateOnSaleFrom;
    map['date_on_sale_from_gmt'] = dateOnSaleFromGmt;
    map['date_on_sale_to'] = dateOnSaleTo;
    map['date_on_sale_to_gmt'] = dateOnSaleToGmt;
    map['price_html'] = priceHtml;
    map['on_sale'] = onSale;
    map['purchasable'] = purchasable;
    map['total_sales'] = totalSales;
    map['virtual'] = virtual;
    map['downloadable'] = downloadable;
    if (downloads != null) {
      map['downloads'] = downloads?.map((v) => v.toJson()).toList();
    }
    map['download_limit'] = downloadLimit;
    map['download_expiry'] = downloadExpiry;
    map['external_url'] = externalUrl;
    map['button_text'] = buttonText;
    map['tax_status'] = taxStatus;
    map['tax_class'] = taxClass;
    map['manage_stock'] = manageStock;
    map['stock_quantity'] = stockQuantity;
    map['in_stock'] = inStock;
    map['backorders'] = backorders;
    map['backorders_allowed'] = backordersAllowed;
    map['backordered'] = backordered;
    map['sold_individually'] = soldIndividually;
    map['weight'] = weight;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['shipping_required'] = shippingRequired;
    map['shipping_taxable'] = shippingTaxable;
    map['shipping_class'] = shippingClass;
    map['shipping_class_id'] = shippingClassId;
    map['reviews_allowed'] = reviewsAllowed;
    map['average_rating'] = averageRating;
    map['rating_count'] = ratingCount;
    map['related_ids'] = relatedIds;
    if (upsellIds != null) {
      map['upsell_ids'] = upsellIds?.map((v) => v.toJson()).toList();
    }
    if (crossSellIds != null) {
      map['cross_sell_ids'] = crossSellIds?.map((v) => v.toJson()).toList();
    }
    map['parent_id'] = parentId;
    map['purchase_note'] = purchaseNote;
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['app_thumbnail'] = appThumbnail;
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    if (defaultAttributes != null) {
      map['default_attributes'] = defaultAttributes?.map((v) => v.toJson()).toList();
    }
    if (variations != null) {
      map['variations'] = variations?.map((v) => v.toJson()).toList();
    }
    if (groupedProducts != null) {
      map['grouped_products'] = groupedProducts?.map((v) => v.toJson()).toList();
    }
    map['menu_order'] = menuOrder;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['rewards_message'] = rewardsMessage;
    map['addition_info_html'] = additionInfoHtml;
    map['featured_video'] = featuredVideo;
    map['image'] = image;
    map['title'] = title;
    map['rating'] = rating;
    if (sellerInfo != null) {
      map['seller_info'] = sellerInfo?.toJson();
    }
    return map;
  }
}

SellerInfo sellerInfoFromJson(String str) => SellerInfo.fromJson(json.decode(str));

String sellerInfoToJson(SellerInfo data) => json.encode(data.toJson());

class SellerInfo {
  SellerInfo({
    this.isSeller,
  });

  SellerInfo.fromJson(dynamic json) {
    isSeller = json['is_seller'];
  }

  bool? isSeller;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_seller'] = isSeller;
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

Attributes attributesFromJson(String str) => Attributes.fromJson(json.decode(str));

String attributesToJson(Attributes data) => json.encode(data.toJson());

class Attributes {
  Attributes({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
    this.newOptions,
  });

  Attributes.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    visible = json['visible'];
    variation = json['variation'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
    if (json['new_options'] != null) {
      newOptions = [];
      json['new_options'].forEach((v) {
        newOptions?.add(NewOptions.fromJson(v));
      });
    }
  }

  int? id;
  String? name;
  int? position;
  bool? visible;
  bool? variation;
  List<String>? options;
  List<NewOptions>? newOptions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['position'] = position;
    map['visible'] = visible;
    map['variation'] = variation;
    map['options'] = options;
    if (newOptions != null) {
      map['new_options'] = newOptions?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

NewOptions newOptionsFromJson(String str) => NewOptions.fromJson(json.decode(str));

String newOptionsToJson(NewOptions data) => json.encode(data.toJson());

class NewOptions {
  NewOptions({
    this.variationName,
    this.color,
    this.image,
  });

  NewOptions.fromJson(dynamic json) {
    variationName = json['variation_name'];
    color = json['color'];
    image = json['image'];
  }

  String? variationName;
  String? color;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['variation_name'] = variationName;
    map['color'] = color;
    map['image'] = image;
    return map;
  }
}

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));

String imagesToJson(Images data) => json.encode(data.toJson());

class Images {
  Images({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
    this.position,
  });

  Images.fromJson(dynamic json) {
    id = json['id'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    src = json['src'];
    name = json['name'];
    alt = json['alt'];
    position = json['position'];
  }

  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;
  int? position;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['src'] = src;
    map['name'] = name;
    map['alt'] = alt;
    map['position'] = position;
    return map;
  }
}

Categories categoriesFromJson(String str) => Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
    this.id,
    this.name,
    this.slug,
  });

  Categories.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }
}

Dimensions dimensionsFromJson(String str) => Dimensions.fromJson(json.decode(str));

String dimensionsToJson(Dimensions data) => json.encode(data.toJson());

class Dimensions {
  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  Dimensions.fromJson(dynamic json) {
    length = json['length'];
    width = json['width'];
    height = json['height'];
  }

  String? length;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['length'] = length;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

PgsAppContactInfo pgsAppContactInfoFromJson(String str) => PgsAppContactInfo.fromJson(json.decode(str));

String pgsAppContactInfoToJson(PgsAppContactInfo data) => json.encode(data.toJson());

class PgsAppContactInfo {
  PgsAppContactInfo({
    this.addressLine1,
    this.addressLine2,
    this.email,
    this.phone,
    this.whatsappNo,
    this.whatsappFloatingButton,
  });

  PgsAppContactInfo.fromJson(dynamic json) {
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    email = json['email'];
    phone = json['phone'];
    whatsappNo = json['whatsapp_no'];
    whatsappFloatingButton = json['whatsapp_floating_button'];
  }

  String? addressLine1;
  String? addressLine2;
  String? email;
  String? phone;
  String? whatsappNo;
  String? whatsappFloatingButton;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_line_1'] = addressLine1;
    map['address_line_2'] = addressLine2;
    map['email'] = email;
    map['phone'] = phone;
    map['whatsapp_no'] = whatsappNo;
    map['whatsapp_floating_button'] = whatsappFloatingButton;
    return map;
  }
}

PgsAppSocialLinks pgsAppSocialLinksFromJson(String str) => PgsAppSocialLinks.fromJson(json.decode(str));

String pgsAppSocialLinksToJson(PgsAppSocialLinks data) => json.encode(data.toJson());

class PgsAppSocialLinks {
  PgsAppSocialLinks({
    this.facebook,
    this.twitter,
    this.linkedin,
    this.googlePlus,
    this.pinterest,
    this.instagram,
  });

  PgsAppSocialLinks.fromJson(dynamic json) {
    facebook = json['facebook'];
    twitter = json['twitter'];
    linkedin = json['linkedin'];
    googlePlus = json['google_plus'];
    pinterest = json['pinterest'];
    instagram = json['instagram'];
  }

  String? facebook;
  String? twitter;
  String? linkedin;
  String? googlePlus;
  String? pinterest;
  String? instagram;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['facebook'] = facebook;
    map['twitter'] = twitter;
    map['linkedin'] = linkedin;
    map['google_plus'] = googlePlus;
    map['pinterest'] = pinterest;
    map['instagram'] = instagram;
    return map;
  }
}

InfoPages infoPagesFromJson(String str) => InfoPages.fromJson(json.decode(str));

String infoPagesToJson(InfoPages data) => json.encode(data.toJson());

class InfoPages {
  InfoPages({
    this.infoPagesPageId,
    this.infoPagesPageTitle,
    this.infoPagesPageUrl,
  });

  InfoPages.fromJson(dynamic json) {
    infoPagesPageId = json['info_pages_page_id'];
    infoPagesPageTitle = json['info_pages_page_title'];
    infoPagesPageUrl = json['info_pages_page_url'];
  }

  String? infoPagesPageId;
  String? infoPagesPageTitle;
  String? infoPagesPageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['info_pages_page_id'] = infoPagesPageId;
    map['info_pages_page_title'] = infoPagesPageTitle;
    map['info_pages_page_url'] = infoPagesPageUrl;
    return map;
  }
}

StaticPage staticPageFromJson(String str) => StaticPage.fromJson(json.decode(str));

String staticPageToJson(StaticPage data) => json.encode(data.toJson());

class StaticPage {
  StaticPage({
    this.aboutUs,
    this.termsOfUse,
    this.privacyPolicy,
  });

  StaticPage.fromJson(dynamic json) {
    aboutUs = json['about_us'];
    termsOfUse = json['terms_of_use'];
    privacyPolicy = json['privacy_policy'];
  }

  String? aboutUs;
  String? termsOfUse;
  String? privacyPolicy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['about_us'] = aboutUs;
    map['terms_of_use'] = termsOfUse;
    map['privacy_policy'] = privacyPolicy;
    return map;
  }
}

FeatureBox featureBoxFromJson(String str) => FeatureBox.fromJson(json.decode(str));

String featureBoxToJson(FeatureBox data) => json.encode(data.toJson());

class FeatureBox {
  FeatureBox({
    this.featureTitle,
    this.featureContent,
    this.featureImage,
  });

  FeatureBox.fromJson(dynamic json) {
    featureTitle = json['feature_title'];
    featureContent = json['feature_content'];
    featureImage = json['feature_image'];
  }

  String? featureTitle;
  String? featureContent;
  String? featureImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['feature_title'] = featureTitle;
    map['feature_content'] = featureContent;
    map['feature_image'] = featureImage;
    return map;
  }
}

BannerAd bannerAdFromJson(String str) => BannerAd.fromJson(json.decode(str));

String bannerAdToJson(BannerAd data) => json.encode(data.toJson());

class BannerAd {
  BannerAd({
    this.bannerAdImageUrl,
    this.bannerAdImageId,
    this.bannerAdCatId,
  });

  BannerAd.fromJson(dynamic json) {
    bannerAdImageUrl = json['banner_ad_image_url'];
    bannerAdImageId = json['banner_ad_image_id'];
    bannerAdCatId = json['banner_ad_cat_id'];
  }

  String? bannerAdImageUrl;
  String? bannerAdImageId;
  String? bannerAdCatId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner_ad_image_url'] = bannerAdImageUrl;
    map['banner_ad_image_id'] = bannerAdImageId;
    map['banner_ad_cat_id'] = bannerAdCatId;
    return map;
  }
}

ProductsCarousel productsCarouselFromJson(String str) => ProductsCarousel.fromJson(json.decode(str));

String productsCarouselToJson(ProductsCarousel data) => json.encode(data.toJson());

class ProductsCarousel {
  ProductsCarousel({
    this.featureProducts,
    this.recentProducts,
    this.specialDealProducts,
    this.popularProducts,
    this.topRatedProducts,
  });

  ProductsCarousel.fromJson(dynamic json) {
    featureProducts = json['feature_products'] != null ? FeatureProducts.fromJson(json['feature_products']) : null;
    recentProducts = json['recent_products'] != null ? RecentProducts.fromJson(json['recent_products']) : null;
    specialDealProducts =
        json['special_deal_products'] != null ? SpecialDealProducts.fromJson(json['special_deal_products']) : null;
    popularProducts = json['popular_products'] != null ? PopularProducts.fromJson(json['popular_products']) : null;
    topRatedProducts =
        json['top_rated_products'] != null ? TopRatedProducts.fromJson(json['top_rated_products']) : null;
  }

  FeatureProducts? featureProducts;
  RecentProducts? recentProducts;
  SpecialDealProducts? specialDealProducts;
  PopularProducts? popularProducts;
  TopRatedProducts? topRatedProducts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (featureProducts != null) {
      map['feature_products'] = featureProducts?.toJson();
    }
    if (recentProducts != null) {
      map['recent_products'] = recentProducts?.toJson();
    }
    if (specialDealProducts != null) {
      map['special_deal_products'] = specialDealProducts?.toJson();
    }
    if (popularProducts != null) {
      map['popular_products'] = popularProducts?.toJson();
    }
    if (topRatedProducts != null) {
      map['top_rated_products'] = topRatedProducts?.toJson();
    }
    return map;
  }
}

TopRatedProducts topRatedProductsFromJson(String str) => TopRatedProducts.fromJson(json.decode(str));

String topRatedProductsToJson(TopRatedProducts data) => json.encode(data.toJson());

class TopRatedProducts {
  TopRatedProducts({
    this.status,
    this.title,
    this.screenOrder,
    this.products,
  });

  TopRatedProducts.fromJson(dynamic json) {
    status = json['status'];
    title = json['title'];
    screenOrder = json['screen_order'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(v.toString());
      });
    }
  }

  String? status;
  String? title;
  int? screenOrder;
  List<dynamic>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['title'] = title;
    map['screen_order'] = screenOrder;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

PopularProducts popularProductsFromJson(String str) => PopularProducts.fromJson(json.decode(str));

String popularProductsToJson(PopularProducts data) => json.encode(data.toJson());

class PopularProducts {
  PopularProducts({
    this.status,
    this.title,
    this.screenOrder,
    this.products,
  });

  PopularProducts.fromJson(dynamic json) {
    status = json['status'];
    title = json['title'];
    screenOrder = json['screen_order'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(v.toString());
      });
    }
  }

  String? status;
  String? title;
  int? screenOrder;
  List<dynamic>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['title'] = title;
    map['screen_order'] = screenOrder;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SpecialDealProducts specialDealProductsFromJson(String str) => SpecialDealProducts.fromJson(json.decode(str));

String specialDealProductsToJson(SpecialDealProducts data) => json.encode(data.toJson());

class SpecialDealProducts {
  SpecialDealProducts({
    this.status,
    this.title,
    this.screenOrder,
    this.products,
  });

  SpecialDealProducts.fromJson(dynamic json) {
    status = json['status'];
    title = json['title'];
    screenOrder = json['screen_order'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(v.toString());
      });
    }
  }

  String? status;
  String? title;
  int? screenOrder;
  List<dynamic>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['title'] = title;
    map['screen_order'] = screenOrder;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

RecentProducts recentProductsFromJson(String str) => RecentProducts.fromJson(json.decode(str));

String recentProductsToJson(RecentProducts data) => json.encode(data.toJson());

class RecentProducts {
  RecentProducts({
    this.status,
    this.title,
    this.screenOrder,
    this.products,
  });

  RecentProducts.fromJson(dynamic json) {
    status = json['status'];
    title = json['title'];
    screenOrder = json['screen_order'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }

  String? status;
  String? title;
  int? screenOrder;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['title'] = title;
    map['screen_order'] = screenOrder;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.taxPrice,
    this.priceExcludingTax,
    this.priceIncludingTax,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.inStock,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.appThumbnail,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.rewardsMessage,
    this.additionInfoHtml,
    this.featuredVideo,
    this.sellerInfo,
    this.image,
    this.title,
    this.rating,
  });

  Products.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    permalink = json['permalink'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    type = json['type'];
    status = json['status'];
    featured = json['featured'];
    catalogVisibility = json['catalog_visibility'];
    description = json['description'];
    shortDescription = json['short_description'];
    sku = json['sku'];
    price = json['price'];
    taxPrice = json['tax_price'];
    priceExcludingTax = json['price_excluding_tax'];
    priceIncludingTax = json['price_including_tax'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    dateOnSaleFrom = json['date_on_sale_from'];
    dateOnSaleFromGmt = json['date_on_sale_from_gmt'];
    dateOnSaleTo = json['date_on_sale_to'];
    dateOnSaleToGmt = json['date_on_sale_to_gmt'];
    priceHtml = json['price_html'];
    onSale = json['on_sale'];
    purchasable = json['purchasable'];
    totalSales = json['total_sales'];
    virtual = json['virtual'];
    downloadable = json['downloadable'];
    if (json['downloads'] != null) {
      downloads = [];
      json['downloads'].forEach((v) {
        downloads?.add(v.toString());
      });
    }
    downloadLimit = json['download_limit'];
    downloadExpiry = json['download_expiry'];
    externalUrl = json['external_url'];
    buttonText = json['button_text'];
    taxStatus = json['tax_status'];
    taxClass = json['tax_class'];
    manageStock = json['manage_stock'];
    stockQuantity = json['stock_quantity'];
    inStock = json['in_stock'];
    backorders = json['backorders'];
    backordersAllowed = json['backorders_allowed'];
    backordered = json['backordered'];
    soldIndividually = json['sold_individually'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
    shippingRequired = json['shipping_required'];
    shippingTaxable = json['shipping_taxable'];
    shippingClass = json['shipping_class'];
    shippingClassId = json['shipping_class_id'];
    reviewsAllowed = json['reviews_allowed'];
    averageRating = json['average_rating'];
    ratingCount = json['rating_count'];
    if (json['related_ids'] != null) {
      relatedIds = [];
      json['related_ids'].forEach((v) {
        relatedIds?.add(v.toString());
      });
    }
    if (json['upsell_ids'] != null) {
      upsellIds = [];
      json['upsell_ids'].forEach((v) {
        upsellIds?.add(v.toString());
      });
    }
    if (json['cross_sell_ids'] != null) {
      crossSellIds = [];
      json['cross_sell_ids'].forEach((v) {
        crossSellIds?.add(v.toString());
      });
    }
    parentId = json['parent_id'];
    purchaseNote = json['purchase_note'];
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(v.toString());
      });
    }
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    appThumbnail = json['app_thumbnail'];
    if (json['attributes'] != null) {
      attributes = [];
      json['attributes'].forEach((v) {
        attributes?.add(v.toString());
      });
    }
    if (json['default_attributes'] != null) {
      defaultAttributes = [];
      json['default_attributes'].forEach((v) {
        defaultAttributes?.add(v.toString());
      });
    }
    if (json['variations'] != null) {
      variations = [];
      json['variations'].forEach((v) {
        variations?.add(v.toString());
      });
    }
    if (json['grouped_products'] != null) {
      groupedProducts = [];
      json['grouped_products'].forEach((v) {
        groupedProducts?.add(v.toString());
      });
    }
    menuOrder = json['menu_order'];
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    rewardsMessage = json['rewards_message'];
    additionInfoHtml = json['addition_info_html'];
    featuredVideo = json['featured_video'];
    sellerInfo = json['seller_info'] != null ? SellerInfo.fromJson(json['seller_info']) : null;
    image = json['image'];
    title = json['title'];
    rating = json['rating'];
  }

  int? id;
  String? name;
  String? slug;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? taxPrice;
  String? priceExcludingTax;
  String? priceIncludingTax;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  String? priceHtml;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<dynamic>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  dynamic stockQuantity;
  bool? inStock;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<dynamic>? relatedIds;
  List<dynamic>? upsellIds;
  List<dynamic>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Categories>? categories;
  List<dynamic>? tags;
  List<Images>? images;
  String? appThumbnail;
  List<dynamic>? attributes;
  List<dynamic>? defaultAttributes;
  List<dynamic>? variations;
  List<dynamic>? groupedProducts;
  int? menuOrder;
  List<MetaData>? metaData;
  String? rewardsMessage;
  String? additionInfoHtml;
  dynamic featuredVideo;
  SellerInfo? sellerInfo;
  String? image;
  String? title;
  String? rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['permalink'] = permalink;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['type'] = type;
    map['status'] = status;
    map['featured'] = featured;
    map['catalog_visibility'] = catalogVisibility;
    map['description'] = description;
    map['short_description'] = shortDescription;
    map['sku'] = sku;
    map['price'] = price;
    map['tax_price'] = taxPrice;
    map['price_excluding_tax'] = priceExcludingTax;
    map['price_including_tax'] = priceIncludingTax;
    map['regular_price'] = regularPrice;
    map['sale_price'] = salePrice;
    map['date_on_sale_from'] = dateOnSaleFrom;
    map['date_on_sale_from_gmt'] = dateOnSaleFromGmt;
    map['date_on_sale_to'] = dateOnSaleTo;
    map['date_on_sale_to_gmt'] = dateOnSaleToGmt;
    map['price_html'] = priceHtml;
    map['on_sale'] = onSale;
    map['purchasable'] = purchasable;
    map['total_sales'] = totalSales;
    map['virtual'] = virtual;
    map['downloadable'] = downloadable;
    if (downloads != null) {
      map['downloads'] = downloads?.map((v) => v.toJson()).toList();
    }
    map['download_limit'] = downloadLimit;
    map['download_expiry'] = downloadExpiry;
    map['external_url'] = externalUrl;
    map['button_text'] = buttonText;
    map['tax_status'] = taxStatus;
    map['tax_class'] = taxClass;
    map['manage_stock'] = manageStock;
    map['stock_quantity'] = stockQuantity;
    map['in_stock'] = inStock;
    map['backorders'] = backorders;
    map['backorders_allowed'] = backordersAllowed;
    map['backordered'] = backordered;
    map['sold_individually'] = soldIndividually;
    map['weight'] = weight;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['shipping_required'] = shippingRequired;
    map['shipping_taxable'] = shippingTaxable;
    map['shipping_class'] = shippingClass;
    map['shipping_class_id'] = shippingClassId;
    map['reviews_allowed'] = reviewsAllowed;
    map['average_rating'] = averageRating;
    map['rating_count'] = ratingCount;
    if (relatedIds != null) {
      map['related_ids'] = relatedIds?.map((v) => v.toJson()).toList();
    }
    if (upsellIds != null) {
      map['upsell_ids'] = upsellIds?.map((v) => v.toJson()).toList();
    }
    if (crossSellIds != null) {
      map['cross_sell_ids'] = crossSellIds?.map((v) => v.toJson()).toList();
    }
    map['parent_id'] = parentId;
    map['purchase_note'] = purchaseNote;
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['app_thumbnail'] = appThumbnail;
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    if (defaultAttributes != null) {
      map['default_attributes'] = defaultAttributes?.map((v) => v.toJson()).toList();
    }
    if (variations != null) {
      map['variations'] = variations?.map((v) => v.toJson()).toList();
    }
    if (groupedProducts != null) {
      map['grouped_products'] = groupedProducts?.map((v) => v.toJson()).toList();
    }
    map['menu_order'] = menuOrder;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['rewards_message'] = rewardsMessage;
    map['addition_info_html'] = additionInfoHtml;
    map['featured_video'] = featuredVideo;
    if (sellerInfo != null) {
      map['seller_info'] = sellerInfo?.toJson();
    }
    map['image'] = image;
    map['title'] = title;
    map['rating'] = rating;
    return map;
  }
}

FeatureProducts featureProductsFromJson(String str) => FeatureProducts.fromJson(json.decode(str));

String featureProductsToJson(FeatureProducts data) => json.encode(data.toJson());

class FeatureProducts {
  FeatureProducts({
    this.status,
    this.title,
    this.screenOrder,
    this.products,
  });

  FeatureProducts.fromJson(dynamic json) {
    status = json['status'];
    title = json['title'];
    screenOrder = json['screen_order'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }

  String? status;
  String? title;
  int? screenOrder;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['title'] = title;
    map['screen_order'] = screenOrder;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

CategoryBanners categoryBannersFromJson(String str) => CategoryBanners.fromJson(json.decode(str));

String categoryBannersToJson(CategoryBanners data) => json.encode(data.toJson());

class CategoryBanners {
  CategoryBanners({
    this.catBannersImageId,
    this.catBannersImageUrl,
    this.catBannersCatId,
    this.catBannersTitle,
  });

  CategoryBanners.fromJson(dynamic json) {
    catBannersImageId = json['cat_banners_image_id'];
    catBannersImageUrl = json['cat_banners_image_url'];
    catBannersCatId = json['cat_banners_cat_id'];
    catBannersTitle = json['cat_banners_title'];
  }

  String? catBannersImageId;
  String? catBannersImageUrl;
  String? catBannersCatId;
  String? catBannersTitle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cat_banners_image_id'] = catBannersImageId;
    map['cat_banners_image_url'] = catBannersImageUrl;
    map['cat_banners_cat_id'] = catBannersCatId;
    map['cat_banners_title'] = catBannersTitle;
    return map;
  }
}

MainSlider mainSliderFromJson(String str) => MainSlider.fromJson(json.decode(str));

String mainSliderToJson(MainSlider data) => json.encode(data.toJson());

class MainSlider {
  MainSlider({
    this.uploadImageId,
    this.sliderCatId,
    this.uploadImageUrl,
  });

  MainSlider.fromJson(dynamic json) {
    uploadImageId = json['upload_image_id'];
    sliderCatId = json['slider_cat_id'];
    uploadImageUrl = json['upload_image_url'];
  }

  String? uploadImageId;
  String? sliderCatId;
  String? uploadImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['upload_image_id'] = uploadImageId;
    map['slider_cat_id'] = sliderCatId;
    map['upload_image_url'] = uploadImageUrl;
    return map;
  }
}

MainCategory mainCategoryFromJson(String str) => MainCategory.fromJson(json.decode(str));

String mainCategoryToJson(MainCategory data) => json.encode(data.toJson());

class MainCategory {
  MainCategory({
    this.mainCatId,
    this.mainCatName,
    this.mainCatImage,
  });

  MainCategory.fromJson(dynamic json) {
    mainCatId = json['main_cat_id'];
    mainCatName = json['main_cat_name'];
    mainCatImage = json['main_cat_image'];
  }

  String? mainCatId;
  String? mainCatName;
  String? mainCatImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['main_cat_id'] = mainCatId;
    map['main_cat_name'] = mainCatName;
    map['main_cat_image'] = mainCatImage;
    return map;
  }
}
