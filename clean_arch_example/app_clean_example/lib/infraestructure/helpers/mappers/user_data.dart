import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
    final List<Result> results;
    final Info info;

    UserData({
        required this.results,
        required this.info,
    });

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        info: Info.fromJson(json["info"]),
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "info": info.toJson(),
    };
}

class Info {
    final String seed;
    final int results;
    final int page;
    final String version;

    Info({
        required this.seed,
        required this.results,
        required this.page,
        required this.version,
    });

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        seed: json["seed"],
        results: json["results"],
        page: json["page"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "seed": seed,
        "results": results,
        "page": page,
        "version": version,
    };
}

class Result {
    final String gender;
    final Name name;
    final Location location;
    final String email;
    final Login login;
    final Dob dob;
    final Dob registered;
    final String phone;
    final String cell;
    final Id id;
    final Picture picture;
    final String nat;

    Result({
        required this.gender,
        required this.name,
        required this.location,
        required this.email,
        required this.login,
        required this.dob,
        required this.registered,
        required this.phone,
        required this.cell,
        required this.id,
        required this.picture,
        required this.nat,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        location: Location.fromJson(json["location"]),
        email: json["email"],
        login: Login.fromJson(json["login"]),
        dob: Dob.fromJson(json["dob"]),
        registered: Dob.fromJson(json["registered"]),
        phone: json["phone"],
        cell: json["cell"],
        id: Id.fromJson(json["id"]),
        picture: Picture.fromJson(json["picture"]),
        nat: json["nat"],
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name.toJson(),
        "location": location.toJson(),
        "email": email,
        "login": login.toJson(),
        "dob": dob.toJson(),
        "registered": registered.toJson(),
        "phone": phone,
        "cell": cell,
        "id": id.toJson(),
        "picture": picture.toJson(),
        "nat": nat,
    };
}

class Dob {
    final DateTime date;
    final int age;

    Dob({
        required this.date,
        required this.age,
    });

    factory Dob.fromJson(Map<String, dynamic> json) => Dob(
        date: DateTime.parse(json["date"]),
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "age": age,
    };
}

class Id {
    final String name;
    final String value;

    Id({
        required this.name,
        required this.value,
    });

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
    };
}

class Location {
    final Street street;
    final String city;
    final String state;
    final String country;
    final int postcode;
    final Coordinates coordinates;
    final Timezone timezone;

    Location({
        required this.street,
        required this.city,
        required this.state,
        required this.country,
        required this.postcode,
        required this.coordinates,
        required this.timezone,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        street: Street.fromJson(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postcode: json["postcode"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
        timezone: Timezone.fromJson(json["timezone"]),
    );

    Map<String, dynamic> toJson() => {
        "street": street.toJson(),
        "city": city,
        "state": state,
        "country": country,
        "postcode": postcode,
        "coordinates": coordinates.toJson(),
        "timezone": timezone.toJson(),
    };
}

class Coordinates {
    final String latitude;
    final String longitude;

    Coordinates({
        required this.latitude,
        required this.longitude,
    });

    factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

class Street {
    final int number;
    final String name;

    Street({
        required this.number,
        required this.name,
    });

    factory Street.fromJson(Map<String, dynamic> json) => Street(
        number: json["number"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
    };
}

class Timezone {
    final String offset;
    final String description;

    Timezone({
        required this.offset,
        required this.description,
    });

    factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        offset: json["offset"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "offset": offset,
        "description": description,
    };
}

class Login {
    final String uuid;
    final String username;
    final String password;
    final String salt;
    final String md5;
    final String sha1;
    final String sha256;

    Login({
        required this.uuid,
        required this.username,
        required this.password,
        required this.salt,
        required this.md5,
        required this.sha1,
        required this.sha256,
    });

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        uuid: json["uuid"],
        username: json["username"],
        password: json["password"],
        salt: json["salt"],
        md5: json["md5"],
        sha1: json["sha1"],
        sha256: json["sha256"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "username": username,
        "password": password,
        "salt": salt,
        "md5": md5,
        "sha1": sha1,
        "sha256": sha256,
    };
}

class Name {
    final String title;
    final String first;
    final String last;

    Name({
        required this.title,
        required this.first,
        required this.last,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
    };
}

class Picture {
    final String large;
    final String medium;
    final String thumbnail;

    Picture({
        required this.large,
        required this.medium,
        required this.thumbnail,
    });

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}
