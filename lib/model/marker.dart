class Local {
    Local({
        required this.id,
        required this.desaId,
        required this.email,
        required this.latitude,
        required this.longitude,
        required this.pengangkut,
        required this.ket,
        required this.status,
    });

    int id;
    int desaId;
    String email;
    String latitude;
    String longitude;
    dynamic pengangkut;
    dynamic ket;
    int status;

    factory Local.fromJson(Map<String, dynamic> json) => Local(
        id: json["id".toString()],
        desaId: json["desa_id".toString()],
        email: json["email".toString()],
        latitude: json["latitude".toString()],
        longitude: json["longitude".toString()],
        pengangkut: json["pengangkut".toString()],
        ket: json["ket".toString()],
        status: json["status".toString()],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "desa_id": desaId,
        "email": email,
        "latitude": latitude,
        "longitude": longitude,
        "pengangkut": pengangkut,
        "ket": ket,
        "status": status,
    };
}
