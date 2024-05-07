class EndPoints {
  static const String base_url = 'http://143.110.245.179:8000';

  //-------------Rohit Raj
  static const String live_room = base_url + '/api/user/live_room';
  static const String ongoing_live_room =
      base_url + '/api/user/ongoing_live_room';
  static const String join_room = base_url + '/api/user/join_room';
  static const String get_live_room_data =
      base_url + '/api/user/get_live_room?id=';
  static const String leave_room = base_url + '/api/user/leave_room';
  static const String gift = base_url + '/api/user/gift';
  static const String send_gift = base_url + '/api/user/send_gift';
  static const String host = base_url + '/api/user/host';
  static const String message_group = base_url + '/api/user/message_group';

//-------------Rohit Raj
  static const String login = base_url + "/api/user/login";
  static const String signup = base_url + "/api/user";
  static const String verify_signup_otp =
      base_url + "/api/user/verify_signup_otp";
  static const String getProfile = base_url + "/api/user";
  static const String updateProfile = base_url + "/api/user/detail_status";
  static const String interest_list = base_url + "/api/user/interest";
  static const String forget_password = base_url + "/api/user/forget_password";
  static const String reset_password = base_url + "/api/user/reset_password";
  static const String terms_and_conditions =
      base_url + "/api/user/app_data/terms_and_conditions";

  //---------------mohnish Start

  /// Reels
  static const String getReels = base_url + "/api/user/post";
  static const String likeUnlike = base_url + "/api/user/like/";
  static const String videoPost = base_url + "/api/user/post";
  static const String videoView = base_url + "/api/user/view/";
  static const String comment = base_url + "/api/user/comment";

  /// profile
  static const String faq = base_url + "/api/user/faq";
  static const String wallet = base_url + "/api/user/wallet";
  static const String hostProfile = base_url + "/api/user/details/";
  static const String avatar = base_url + "/api/user/avatar";

//---------------mohnish End
}
