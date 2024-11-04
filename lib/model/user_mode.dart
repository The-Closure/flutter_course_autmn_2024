
import 'dart:convert';

class User {
    final int id;
    final String name;
    final String username;
    final String email;
    final Address address;
    final String phone;
    final String website;
    final Company company;

    User({
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address,
        required this.phone,
        required this.website,
        required this.company,
    });

    User copyWith({
        int? id,
        String? name,
        String? username,
        String? email,
        Address? address,
        String? phone,
        String? website,
        Company? company,
    }) => 
        User(
            id: id ?? this.id,
            name: name ?? this.name,
            username: username ?? this.username,
            email: email ?? this.email,
            address: address ?? this.address,
            phone: phone ?? this.phone,
            website: website ?? this.website,
            company: company ?? this.company,
        );

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: Address.fromMap(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: Company.fromMap(json["company"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address.toMap(),
        "phone": phone,
        "website": website,
        "company": company.toMap(),
    };
}

class Address {
    final String street;
    final String suite;
    final String city;
    final String zipcode;
    final Geo geo;

    Address({
        required this.street,
        required this.suite,
        required this.city,
        required this.zipcode,
        required this.geo,
    });

    Address copyWith({
        String? street,
        String? suite,
        String? city,
        String? zipcode,
        Geo? geo,
    }) => 
        Address(
            street: street ?? this.street,
            suite: suite ?? this.suite,
            city: city ?? this.city,
            zipcode: zipcode ?? this.zipcode,
            geo: geo ?? this.geo,
        );

    factory Address.fromJson(String str) => Address.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Address.fromMap(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: Geo.fromMap(json["geo"]),
    );

    Map<String, dynamic> toMap() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo.toMap(),
    };
}

class Geo {
    final String lat;
    final String lng;

    Geo({
        required this.lat,
        required this.lng,
    });

    Geo copyWith({
        String? lat,
        String? lng,
    }) => 
        Geo(
            lat: lat ?? this.lat,
            lng: lng ?? this.lng,
        );

    factory Geo.fromJson(String str) => Geo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Geo.fromMap(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toMap() => {
        "lat": lat,
        "lng": lng,
    };
}

class Company {
    final String name;
    final String catchPhrase;
    final String bs;

    Company({
        required this.name,
        required this.catchPhrase,
        required this.bs,
    });

    Company copyWith({
        String? name,
        String? catchPhrase,
        String? bs,
    }) => 
        Company(
            name: name ?? this.name,
            catchPhrase: catchPhrase ?? this.catchPhrase,
            bs: bs ?? this.bs,
        );

    factory Company.fromJson(String str) => Company.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Company.fromMap(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
    };
}
