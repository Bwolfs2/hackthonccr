import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'criar_jornada_controller.g.dart';

class CriarJornadaController = _CriarJornadaControllerBase
    with _$CriarJornadaController;

abstract class _CriarJornadaControllerBase with Store {
  _CriarJornadaControllerBase() {
    init();
  }

  @action
  void init() {
    /// origin marker
    addMarker(LatLng(originLatitude, originLongitude), "origin",
        BitmapDescriptor.defaultMarker);

    /// destination marker
    addMarker(LatLng(destLatitude, destLongitude), "destination",
        BitmapDescriptor.defaultMarkerWithHue(90));
    getPolyline();
  }

  @observable
  String reload;

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }

  // Completer<GoogleMapController> controller = Completer();
  // final CameraPosition kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );
  // final CameraPosition kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  GoogleMapController mapController;
  double originLatitude = -29.1653408, originLongitude = -51.2437924;
  double destLatitude = -30.1084987, destLongitude = -51.3172247;
  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPiKey = 'AIzaSyDu-vQE3OEA2nov-kNoSyyzwHgRxwd50Xk';

  addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
        Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  @action
  addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;

    reload = Uuid().v4();
  }

  getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleAPiKey,
        PointLatLng(originLatitude, originLongitude),
        PointLatLng(destLatitude, destLongitude),
        travelMode: TravelMode.driving,
        wayPoints: [PolylineWayPoint(location: "Caxias do Sul, RS")]);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    addPolyLine();
  }
}
