class Site {
  String nombre;
  String descripcion;
  String tipo;
  String estado;
  String sede;
  String bloque;
  String piso;
  String latitud;
  String longitud;

  Site(
      {required this.nombre,
      required this.descripcion,
      required this.tipo,
      required this.estado,
      required this.sede,
      required this.bloque,
      required this.piso,
      required this.latitud,
      required this.longitud}
  );

  factory Site.fromJson(Map<String, dynamic> json) {
    return Site(
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      tipo: json['tipo'],
      estado: json['estado'],
      sede: json['sede'],
      bloque: json['bloque'],
      piso: json['piso'],
      latitud: json['latitud'],
      longitud: json['longitud'],
    );
  }
 
}