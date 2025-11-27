import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? newCustomFunction(List<CarrinhoRecord> items) {
  double total = 0.0;

  for (final i in items) {
    final double p = (i.price ?? 0).toDouble();
    final double q = ((i.quantity ?? 1) as num).toDouble(); // quantity é int
    total += p * q;
  }
  return total;
}
