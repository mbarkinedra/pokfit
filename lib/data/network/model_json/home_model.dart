import 'abstract_json_resource.dart';

class HomeModel extends AbstractJsonResource {
  String? userName;
  double? greenGains;
  int? goldGains;
  int? userSteps;
  int? todaySteps;
  List<Challenges>? challenges;
  List<Trainings>? trainings;
  List<FeaturedShops>? featuredShops;
  UserActiveSubscription? userActiveSubscription;
  int? hasActiveSubscription;
  int? hasExpiredSubscription;

  HomeModel(
      {this.userName,
      this.greenGains,
      this.goldGains,
      this.userSteps,
      this.todaySteps,
      this.challenges,
      this.trainings,
      this.featuredShops,
      this.userActiveSubscription,
      this.hasActiveSubscription,
      this.hasExpiredSubscription});

  HomeModel.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    greenGains = json['green_gains']?.toDouble();
    goldGains = json['gold_gains'];
    userSteps = json['user_steps'];
    todaySteps = json['today_steps'];
    if (json['challenges'] != null) {
      challenges = <Challenges>[];
      json['challenges'].forEach((v) {
        challenges!.add(new Challenges.fromJson(v));
      });
    }
    if (json['trainings'] != null) {
      trainings = <Trainings>[];
      json['trainings'].forEach((v) {
        trainings!.add(new Trainings.fromJson(v));
      });
    }
    if (json['featured_shops'] != null) {
      featuredShops = <FeaturedShops>[];
      json['featured_shops'].forEach((v) {
        featuredShops!.add(new FeaturedShops.fromJson(v));
      });
    }
    userActiveSubscription = json['user_active_subscription'] != null
        ? new UserActiveSubscription.fromJson(json['user_active_subscription'])
        : null;
    hasActiveSubscription = json['has_active_subscription'];
    hasExpiredSubscription = json['has_expired_subscription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['green_gains'] = this.greenGains;
    data['gold_gains'] = this.goldGains;
    data['user_steps'] = this.userSteps;
    data['today_steps'] = this.todaySteps;
    if (this.challenges != null) {
      data['challenges'] = this.challenges!.map((v) => v.toJson()).toList();
    }
    if (this.trainings != null) {
      data['trainings'] = this.trainings!.map((v) => v.toJson()).toList();
    }
    if (this.featuredShops != null) {
      data['featured_shops'] =
          this.featuredShops!.map((v) => v.toJson()).toList();
    }
    if (this.userActiveSubscription != null) {
      data['user_active_subscription'] = this.userActiveSubscription!.toJson();
    }
    data['has_active_subscription'] = this.hasActiveSubscription;
    data['has_expired_subscription'] = this.hasExpiredSubscription;
    return data;
  }
}

class Challenges {
  int? id;
  int? userId;
  int? eventCategoryId;
  String? name;
  String? challengeType;
  String? type;
  String? description;
  int? registrationCost;
  String? registrationType;
  String? gender;
  String? goal;
  int? intendedParticipants;
  int? firstPrize;
  int? secondPrize;
  int? thirdPrize;
  String? startDate;
  String? endDate;
  int? posted;
  String? address;
  String? destination;
  String? image;
  double? longitude;
  double? latitude;
  double? startLatitude;
  double? startLongitude;
  double? endLatitude;
  double? endLongitude;
  String? city;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? gatheringDate;
  bool? joined;
  User? user;
  List<String>? challengeImages;
  List<String>? challengeSponsors;
  List<ChallengeParticipants>? challengeParticipants;

  Challenges(
      {this.id,
      this.userId,
      this.eventCategoryId,
      this.name,
      this.challengeType,
      this.type,
      this.description,
      this.registrationCost,
      this.registrationType,
      this.gender,
      this.goal,
      this.intendedParticipants,
      this.firstPrize,
      this.secondPrize,
      this.thirdPrize,
      this.startDate,
      this.endDate,
      this.posted,
      this.address,
      this.destination,
      this.image,
      this.longitude,
      this.latitude,
      this.startLatitude,
      this.startLongitude,
      this.endLatitude,
      this.endLongitude,
      this.city,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.gatheringDate,
      this.joined,
      this.user,
      this.challengeImages,
      this.challengeSponsors,
      this.challengeParticipants});

  Challenges.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    eventCategoryId = json['event_category_id'];
    name = json['name'];
    challengeType = json['challenge_type'];
    type = json['type'];
    description = json['description'];
    registrationCost = json['registration_cost'];
    registrationType = json['registration_type'];
    gender = json['gender'];
    goal = json['goal'];
    intendedParticipants = json['intended_participants'];
    firstPrize = json['first_prize'];
    secondPrize = json['second_prize'];
    thirdPrize = json['third_prize'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    posted = json['posted'];
    address = json['address'];
    destination = json['destination'];
    image = json['image'];
    longitude = json['longitude']?.toDouble();
    latitude = json['latitude']?.toDouble();
    startLatitude = json['start_latitude']?.toDouble();
    startLongitude = json['start_longitude']?.toDouble();
    endLatitude = json['end_latitude']?.toDouble();
    endLongitude = json['end_longitude']?.toDouble();
    city = json['city'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    gatheringDate = json['gathering_date'];
    joined = json['joined'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    challengeImages = json['challenge_images'].cast<String>();
    challengeSponsors = json['challenge_sponsors'].cast<String>();
    if (json['challenge_participants'] != null) {
      challengeParticipants = <ChallengeParticipants>[];
      json['challenge_participants'].forEach((v) {
        challengeParticipants!.add(new ChallengeParticipants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['event_category_id'] = this.eventCategoryId;
    data['name'] = this.name;
    data['challenge_type'] = this.challengeType;
    data['type'] = this.type;
    data['description'] = this.description;
    data['registration_cost'] = this.registrationCost;
    data['registration_type'] = this.registrationType;
    data['gender'] = this.gender;
    data['goal'] = this.goal;
    data['intended_participants'] = this.intendedParticipants;
    data['first_prize'] = this.firstPrize;
    data['second_prize'] = this.secondPrize;
    data['third_prize'] = this.thirdPrize;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['posted'] = this.posted;
    data['address'] = this.address;
    data['destination'] = this.destination;
    data['image'] = this.image;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['start_latitude'] = this.startLatitude;
    data['start_longitude'] = this.startLongitude;
    data['end_latitude'] = this.endLatitude;
    data['end_longitude'] = this.endLongitude;
    data['city'] = this.city;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['gathering_date'] = this.gatheringDate;
    data['joined'] = this.joined;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['challenge_images'] = this.challengeImages;
    data['challenge_sponsors'] = this.challengeSponsors;
    if (this.challengeParticipants != null) {
      data['challenge_participants'] =
          this.challengeParticipants!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  String? fullName;

  User({this.id, this.fullName});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    return data;
  }
}

class ChallengeParticipants {
  int? id;
  int? challengeId;
  int? userId;
  String? createdAt;
  String? updatedAt;

  ChallengeParticipants(
      {this.id, this.challengeId, this.userId, this.createdAt, this.updatedAt});

  ChallengeParticipants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    challengeId = json['challenge_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['challenge_id'] = this.challengeId;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Trainings {
  int? id;
  int? userId;
  int? eventCategoryId;
  String? name;
  String? trainingType;
  String? type;
  String? description;
  int? registrationCost;
  String? registrationType;
  String? gender;
  String? goal;
  int? intendedParticipants;
  String? startDate;
  String? endDate;
  String? address;
  Null? destination;
  String? image;
  double? longitude;
  double? latitude;
  double? startLatitude;
  double? startLongitude;
  double? endLatitude;
  double? endLongitude;
  String? city;
  int? posted;
  String? status;
  String? createdAt;
  String? updatedAt;
  Null? gatheringDate;
  bool? joined;
  User? user;
  List<String>? trainingImages;
  List<TrainingSponsors>? trainingSponsors;
  List<TrainingParticipants>? trainingParticipants;

  Trainings(
      {this.id,
      this.userId,
      this.eventCategoryId,
      this.name,
      this.trainingType,
      this.type,
      this.description,
      this.registrationCost,
      this.registrationType,
      this.gender,
      this.goal,
      this.intendedParticipants,
      this.startDate,
      this.endDate,
      this.address,
      this.destination,
      this.image,
      this.longitude,
      this.latitude,
      this.startLatitude,
      this.startLongitude,
      this.endLatitude,
      this.endLongitude,
      this.city,
      this.posted,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.gatheringDate,
      this.joined,
      this.user,
      this.trainingImages,
      this.trainingSponsors,
      this.trainingParticipants});

  Trainings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    eventCategoryId = json['event_category_id'];
    name = json['name'];
    trainingType = json['training_type'];
    type = json['type'];
    description = json['description'];
    registrationCost = json['registration_cost'];
    registrationType = json['registration_type'];
    gender = json['gender'];
    goal = json['goal'];
    intendedParticipants = json['intended_participants'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    address = json['address'];
    destination = json['destination'];
    image = json['image'];
    longitude = json['longitude']?.toDouble();
    latitude = json['latitude']?.toDouble();
    startLatitude = json['start_latitude']?.toDouble();
    startLongitude = json['start_longitude']?.toDouble();
    endLatitude = json['end_latitude']?.toDouble();
    endLongitude = json['end_longitude']?.toDouble();
    city = json['city'];
    posted = json['posted'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    gatheringDate = json['gathering_date'];
    joined = json['joined'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    trainingImages = json['training_images'].cast<String>();
    if (json['training_sponsors'] != null) {
      trainingSponsors = <TrainingSponsors>[];
      json['training_sponsors'].forEach((v) {
        trainingSponsors!.add(new TrainingSponsors.fromJson(v));
      });
    }
    if (json['training_participants'] != null) {
      trainingParticipants = <TrainingParticipants>[];
      json['training_participants'].forEach((v) {
        trainingParticipants!.add(new TrainingParticipants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['event_category_id'] = this.eventCategoryId;
    data['name'] = this.name;
    data['training_type'] = this.trainingType;
    data['type'] = this.type;
    data['description'] = this.description;
    data['registration_cost'] = this.registrationCost;
    data['registration_type'] = this.registrationType;
    data['gender'] = this.gender;
    data['goal'] = this.goal;
    data['intended_participants'] = this.intendedParticipants;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['address'] = this.address;
    data['destination'] = this.destination;
    data['image'] = this.image;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['start_latitude'] = this.startLatitude;
    data['start_longitude'] = this.startLongitude;
    data['end_latitude'] = this.endLatitude;
    data['end_longitude'] = this.endLongitude;
    data['city'] = this.city;
    data['posted'] = this.posted;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['gathering_date'] = this.gatheringDate;
    data['joined'] = this.joined;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['training_images'] = this.trainingImages;
    if (this.trainingSponsors != null) {
      data['training_sponsors'] =
          this.trainingSponsors!.map((v) => v.toJson()).toList();
    }
    if (this.trainingParticipants != null) {
      data['training_participants'] =
          this.trainingParticipants!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TrainingSponsors {
  int? id;
  int? trainingId;
  int? sponsorId;
  String? createdAt;
  String? updatedAt;
  Sponsor? sponsor;

  TrainingSponsors(
      {this.id,
      this.trainingId,
      this.sponsorId,
      this.createdAt,
      this.updatedAt,
      this.sponsor});

  TrainingSponsors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trainingId = json['training_id'];
    sponsorId = json['sponsor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    sponsor =
        json['sponsor'] != null ? new Sponsor.fromJson(json['sponsor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['training_id'] = this.trainingId;
    data['sponsor_id'] = this.sponsorId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.sponsor != null) {
      data['sponsor'] = this.sponsor!.toJson();
    }
    return data;
  }
}

class Sponsor {
  int? id;
  String? fullName;
  Null? companyName;
  String? phone;
  String? bio;
  String? email;
  String? emailVerifiedAt;
  int? banned;
  String? createdAt;
  String? updatedAt;
  int? gains;

  Sponsor(
      {this.id,
      this.fullName,
      this.companyName,
      this.phone,
      this.bio,
      this.email,
      this.emailVerifiedAt,
      this.banned,
      this.createdAt,
      this.updatedAt,
      this.gains});

  Sponsor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    companyName = json['company_name'];
    phone = json['phone'];
    bio = json['bio'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    banned = json['banned'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    gains = json['gains'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    data['company_name'] = this.companyName;
    data['phone'] = this.phone;
    data['bio'] = this.bio;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['banned'] = this.banned;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['gains'] = this.gains;
    return data;
  }
}

class TrainingParticipants {
  int? id;
  int? trainingId;
  int? userId;
  String? createdAt;
  String? updatedAt;

  TrainingParticipants(
      {this.id, this.trainingId, this.userId, this.createdAt, this.updatedAt});

  TrainingParticipants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trainingId = json['training_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['training_id'] = this.trainingId;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class FeaturedShops {
  int? id;
  int? merchantId;
  int? categoryId;
  String? name;
  String? description;
  String? logo;
  Null? banner;
  String? webSite;
  Null? facebook;
  Null? instagram;
  Null? twitter;
  String? telephone;
  String? address;
  int? featured;
  double? longitude;
  double? latitude;
  String? createdAt;
  String? updatedAt;

  FeaturedShops(
      {this.id,
      this.merchantId,
      this.categoryId,
      this.name,
      this.description,
      this.logo,
      this.banner,
      this.webSite,
      this.facebook,
      this.instagram,
      this.twitter,
      this.telephone,
      this.address,
      this.featured,
      this.longitude,
      this.latitude,
      this.createdAt,
      this.updatedAt});

  FeaturedShops.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    merchantId = json['merchant_id'];
    categoryId = json['category_id'];
    name = json['name'];
    description = json['description'];
    logo = json['logo'];
    banner = json['banner'];
    webSite = json['web_site'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    telephone = json['telephone'];
    address = json['address'];
    featured = json['featured'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['merchant_id'] = this.merchantId;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['logo'] = this.logo;
    data['banner'] = this.banner;
    data['web_site'] = this.webSite;
    data['facebook'] = this.facebook;
    data['instagram'] = this.instagram;
    data['twitter'] = this.twitter;
    data['telephone'] = this.telephone;
    data['address'] = this.address;
    data['featured'] = this.featured;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class UserActiveSubscription {
  int? id;
  Null? userPaymentId;
  Null? startDate;
  Null? endDate;
  Null? description;
  int? expired;
  String? createdAt;
  String? updatedAt;
  int? userPackageId;
  int? userId;
  UserPackage? userPackage;

  UserActiveSubscription(
      {this.id,
      this.userPaymentId,
      this.startDate,
      this.endDate,
      this.description,
      this.expired,
      this.createdAt,
      this.updatedAt,
      this.userPackageId,
      this.userId,
      this.userPackage});

  UserActiveSubscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userPaymentId = json['user_payment_id'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    description = json['description'];
    expired = json['expired'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    userPackageId = json['user_package_id'];
    userId = json['user_id'];
    userPackage = json['user_package'] != null
        ? new UserPackage.fromJson(json['user_package'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_payment_id'] = this.userPaymentId;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['description'] = this.description;
    data['expired'] = this.expired;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['user_package_id'] = this.userPackageId;
    data['user_id'] = this.userId;
    if (this.userPackage != null) {
      data['user_package'] = this.userPackage!.toJson();
    }
    return data;
  }
}

class UserPackage {
  int? id;
  String? title;
  int? monthlyPrice;
  int? yearlyPrice;
  int? gains;
  int? steps;
  Null? createdAt;
  Null? updatedAt;

  UserPackage(
      {this.id,
      this.title,
      this.monthlyPrice,
      this.yearlyPrice,
      this.gains,
      this.steps,
      this.createdAt,
      this.updatedAt});

  UserPackage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    monthlyPrice = json['monthly_price'];
    yearlyPrice = json['yearly_price'];
    gains = json['gains'];
    steps = json['steps'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['monthly_price'] = this.monthlyPrice;
    data['yearly_price'] = this.yearlyPrice;
    data['gains'] = this.gains;
    data['steps'] = this.steps;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
