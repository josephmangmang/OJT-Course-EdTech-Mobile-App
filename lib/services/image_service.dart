
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:edtechapp/app/app.dart';

import '../exception/app_exception.dart';

abstract interface class ImageService {

  Future<Either<AppException, None>> uploadProfile(
      File image);

  Stream<String> profileImage(String userId);
 }
