class Comments {
  int? code;
  Meta? meta;
  List<Data>? data = [];

  Comments({this.data, this.code, this.meta});

  factory Comments.fromJson(Map json) {
    return Comments(
        code: json['code'],
        meta: Meta.fromJson(
          json['meta'],
        ),
        data: (json['data'] as List).map((e) => Data.fromJson(e)).toList());
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  factory Meta.fromJson(Map json) {
    return Meta(pagination: Pagination.fromJson(json['pagination']));
  }
}

class Pagination {
  int? total, pages, page, limit;

  Pagination({this.limit, this.page, this.pages, this.total});

  factory Pagination.fromJson(Map json) {
    return Pagination(
      limit: json['limit'],
      page: json['page'],
      pages: json['pages'],
      total: json['total'],
    );
  }
}

class Data {
  int? id, post_id;
  String? name, email, body;

  Data({this.name, this.body, this.id, this.email, this.post_id});

  factory Data.fromJson(Map json) {
    return Data(
      name: json['name'],
      id: json['id'],
      body: json['body'],
      email: json['email'],
      post_id: json['post_id'],
    );
  }
}