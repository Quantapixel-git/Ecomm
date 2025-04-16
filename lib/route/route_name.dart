class RouteName {
  static const String onbordingScreenRoute = "/onbord";
  // static const String notificationPermissionScreenRoute =
  //     "notification_permission";
  // static const String preferredLanuageScreenRoute = "preferred_language";
  static const String trendingScreenRoute = "trending";

  static const String logInScreenRoute = "login";
  static const String signUpScreenRoute = "signup";
  static const String passwordRecoveryScreenRoute = "password_recovery";
  static const String profileSetupScreenRoute = "profile_setup";
  static const String signUpVerificationScreenRoute = "signup_verification";
  static const String verificationMethodScreenRoute = "verification_method";
  static const String otpScreenRoute = "otp";
  static const String newPasswordScreenRoute = "new_password";
  static const String doneResetPasswordScreenRoute = "done_reset_password";
  static const String termsOfServicesScreenRoute = "terms_of_services";
  static const String noInternetScreenRoute = "no_internet";
  static const String serverErrorScreenRoute = "server_error";
  static const String setupFingerprintScreenRoute = "setup_fingerprint";
  static const String setupFaceIdScreenRoute = "setup_faceid";
  static const String productDetailsScreenRoute = "product_details";
  static const String productReviewsScreenRoute = "product_reviews";
  static const String addReviewsScreenRoute = "add_reviews";
  static const String homeScreenRoute = "/";
  static const String brandScreenRoute = "brand";
  static const String discoverWithImageScreenRoute = "discover_with_image";
  static const String subDiscoverScreenRoute = "sub_discover";
  static const String discoverScreenRoute = "discover";
  static const String onSaleScreenRoute = "on_sale";
  static const String kidsScreenRoute = "kids";
  static const String searchScreenRoute = "search";
  static const String searchHistoryScreenRoute = "search_history";
  static const String bookmarkScreenRoute = "bookmark";
  static const String entryPointScreenRoute = "entry_point";
  static const String profileScreenRoute = "profile";
  static const String getHelpScreenRoute = "get_help";
  static const String chatScreenRoute = "chat";
  static const String userInfoScreenRoute = "user_info";
  static const String currentPasswordScreenRoute = "current_passowrd";
  static const String editUserInfoScreenRoute = "edit_user_info";
  static const String notificationsScreenRoute = "notifications";
  static const String noNotificationScreenRoute = "no_notifications";
  static const String enableNotificationScreenRoute = "enable_notifications";
  static const String notificationOptionsScreenRoute = "notification_options";
  static const String selectLanguageScreenRoute = "select_language";
  static const String noAddressScreenRoute = "no_address";
  static const String addressesScreenRoute = "addresses";
  static const String addNewAddressesScreenRoute = "add_new_addresses";
  static const String ordersScreenRoute = "orders";
  static const String orderProcessingScreenRoute = "order_processing";
  static const String orderDetailsScreenRoute = "order_details";
  static const String cancleOrderScreenRoute = "cancle_order";
  static const String deliveredOrdersScreenRoute = "delivered_orders";
  static const String cancledOrdersScreenRoute = "cancled_orders";
  static const String preferencesScreenRoute = "preferences";
  static const String emptyPaymentScreenRoute = "empty_payment";
  static const String emptyWalletScreenRoute = "empty_wallet";
  static const String walletScreenRoute = "wallet";
  static const String cartScreenRoute = "cart";
  static const String paymentMethodScreenRoute = "payment_method";
  static const String addNewCardScreenRoute = "add_new_card";
  static const String thanksForOrderScreenRoute = "thanks_order";
  static const String wishlistScreenRoute = "wishlist";
  static const String faqScreenRoute = "faq";
  static const String selectedAddressScreenRoute = "select_address";
  static const String checkSummaryScreenRoute = "checkout";
  static const String editProfileScreenRoute = "edit_profile";
}

class FullRouteName {
  static final onbord = "/onbord";
  static final login = "/auth/login";
  static final signup = "/auth/signup";
  static final passwordRecovery = "/auth/password_recovery";
  static final home = "/";
  static final productDetails = "/${RouteName.productDetailsScreenRoute}";
  static final discover = "/${RouteName.discoverScreenRoute}";
  static final notifications = "/${RouteName.notificationsScreenRoute}";
  static final orders = "/${RouteName.ordersScreenRoute}";
  static final wishlist = "/${RouteName.wishlistScreenRoute}";
  static final getHelp = "/${RouteName.getHelpScreenRoute}";
  static final faq = "/${RouteName.faqScreenRoute}";
  static final address = "/${RouteName.addressesScreenRoute}";
  static final editProfile = "/${RouteName.editProfileScreenRoute}";
  static final selectAddress =
      "/${RouteName.cartScreenRoute}/${RouteName.selectedAddressScreenRoute}";

  static final checkoutSummary =
      "/${RouteName.cartScreenRoute}/${RouteName.selectedAddressScreenRoute}/${RouteName.checkSummaryScreenRoute}";
}
