// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart' show TypeChecker;

import '../shared_checkers.dart';
import '../type_helper.dart';

class ValueHelper extends TypeHelper {
  const ValueHelper();

  @override
  String serialize(
      DartType targetType, String expression, TypeHelperContext context) {
    if (targetType.isDynamic ||
        targetType.isObject ||
        simpleJsonTypeChecker.isAssignableFromType(targetType)) {
      return expression;
    }

    return null;
  }

  @override
  String deserialize(
      DartType targetType, String expression, TypeHelperContext context) {
    if (targetType.isDynamic || targetType.isObject) {
      // just return it as-is. We'll hope it's safe.
      return expression;
    } else if (const TypeChecker.fromUrl('dart:core#double')
        .isExactlyType(targetType)) {
      return '($expression as num)${context.nullable ? '?' : ''}.toDouble()';
    } else if (simpleJsonTypeChecker.isAssignableFromType(targetType)) {
      return '$expression as $targetType';
    }

    return null;
  }

  @override
  Map<String, dynamic> schema(DartType targetType, TypeHelperContext context) {
    if (targetType.isDynamic || targetType.isObject) {
      return {
        ...schemaMeta(targetType, context),
      };
    }

    final typeName = _typeName(targetType);
    if (typeName != null) {
      return {
        ...schemaMeta(targetType, context),
        'type': typeName,
      };
    }
  }

  static String _typeName(DartType type) {
    if (const TypeChecker.fromUrl('dart:core#null').isAssignableFromType(type)) {
      return 'null';
    }
    if (const TypeChecker.fromUrl('dart:core#bool').isAssignableFromType(type)) {
      return 'boolean';
    }
    if (const TypeChecker.fromUrl('dart:core#String').isAssignableFromType(type)) {
      return 'string';
    }
    if (const TypeChecker.fromUrl('dart:core#int').isAssignableFromType(type)) {
      return 'integer';
    }
    if (const TypeChecker.fromUrl('dart:core#num').isAssignableFromType(type)) {
      return 'number';
    }

    return null;
  }
}
