// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.g_exclude_null__non_nullable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromJson(Map<String, dynamic> json) {
  return KitchenSink(
    ctorValidatedNo42: json['no-42'] as int,
    dynamicIterable: json['dynamicIterable'] as List<dynamic>,
    objectIterable: json['objectIterable'] as List<dynamic>,
    intIterable: (json['intIterable'] as List<dynamic>).map((e) => e as int),
    dateTimeIterable: (json['datetime-iterable'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String)),
  )
    ..dateTime = DateTime.parse(json['dateTime'] as String)
    ..bigInt = BigInt.parse(json['bigInt'] as String)
    ..dynamicSet = (json['dynamicSet'] as List<dynamic>).toSet()
    ..objectSet = (json['objectSet'] as List<dynamic>).toSet()
    ..intSet = (json['intSet'] as List<dynamic>).map((e) => e as int).toSet()
    ..dateTimeSet = (json['dateTimeSet'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toSet()
    ..dynamicList = json['dynamicList'] as List<dynamic>
    ..objectList = json['objectList'] as List<dynamic>
    ..intList = (json['intList'] as List<dynamic>).map((e) => e as int).toList()
    ..dateTimeList = (json['dateTimeList'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toList()
    ..map = json['map'] as Map<String, dynamic>
    ..stringStringMap = Map<String, String>.from(
        json['stringStringMap'] as Map<dynamic, dynamic>)
    ..dynamicIntMap =
        Map<String, int>.from(json['dynamicIntMap'] as Map<dynamic, dynamic>)
    ..objectDateTimeMap =
        (json['objectDateTimeMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    )
    ..crazyComplex = (json['crazyComplex'] as List<dynamic>)
        .map((e) => (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k,
                  (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k,
                        (e as List<dynamic>)
                            .map((e) => (e as List<dynamic>)
                                .map((e) => DateTime.parse(e as String))
                                .toList())
                            .toList()),
                  )),
            ))
        .toList()
    ..val = Map<String, bool>.from(json['val'] as Map<dynamic, dynamic>)
    ..writeNotNull = json['writeNotNull'] as bool
    ..string = json[r'$string'] as String
    ..simpleObject =
        SimpleObject.fromJson(json['simpleObject'] as Map<String, dynamic>)
    ..strictKeysObject = StrictKeysObject.fromJson(
        json['strictKeysObject'] as Map<String, dynamic>)
    ..validatedPropertyNo42 = json['validatedPropertyNo42'] as int;
}

Map<String, dynamic> _$KitchenSinkToJson(KitchenSink instance) =>
    <String, dynamic>{
      'no-42': instance.ctorValidatedNo42,
      'dateTime': instance.dateTime.toIso8601String(),
      'bigInt': instance.bigInt.toString(),
      'dynamicIterable': instance.dynamicIterable.toList(),
      'objectIterable': instance.objectIterable.toList(),
      'intIterable': instance.intIterable.toList(),
      'dynamicSet': instance.dynamicSet.toList(),
      'objectSet': instance.objectSet.toList(),
      'intSet': instance.intSet.toList(),
      'dateTimeSet':
          instance.dateTimeSet.map((e) => e.toIso8601String()).toList(),
      'datetime-iterable':
          instance.dateTimeIterable.map((e) => e.toIso8601String()).toList(),
      'dynamicList': instance.dynamicList,
      'objectList': instance.objectList,
      'intList': instance.intList,
      'dateTimeList':
          instance.dateTimeList.map((e) => e.toIso8601String()).toList(),
      'map': instance.map,
      'stringStringMap': instance.stringStringMap,
      'dynamicIntMap': instance.dynamicIntMap,
      'objectDateTimeMap': instance.objectDateTimeMap
          .map((k, e) => MapEntry(k, e.toIso8601String())),
      'crazyComplex': instance.crazyComplex
          .map((e) => e.map((k, e) => MapEntry(
              k,
              e.map((k, e) => MapEntry(
                  k,
                  e
                      .map((e) => e.map((e) => e.toIso8601String()).toList())
                      .toList())))))
          .toList(),
      'val': instance.val,
      'writeNotNull': instance.writeNotNull,
      r'$string': instance.string,
      'simpleObject': instance.simpleObject,
      'strictKeysObject': instance.strictKeysObject,
      'validatedPropertyNo42': instance.validatedPropertyNo42,
    };

JsonConverterTestClass _$JsonConverterTestClassFromJson(
    Map<String, dynamic> json) {
  return JsonConverterTestClass()
    ..duration = durationConverter.fromJson(json['duration'] as int)
    ..durationList = (json['durationList'] as List<dynamic>)
        .map((e) => durationConverter.fromJson(e as int))
        .toList()
    ..bigInt = const BigIntStringConverter().fromJson(json['bigInt'] as String)
    ..bigIntMap = (json['bigIntMap'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, const BigIntStringConverter().fromJson(e as String)),
    )
    ..numberSilly =
        TrivialNumberConverter.instance.fromJson(json['numberSilly'] as int)
    ..numberSillySet = (json['numberSillySet'] as List<dynamic>)
        .map((e) => TrivialNumberConverter.instance.fromJson(e as int))
        .toSet()
    ..dateTime =
        const EpochDateTimeConverter().fromJson(json['dateTime'] as int);
}

Map<String, dynamic> _$JsonConverterTestClassToJson(
    JsonConverterTestClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duration', durationConverter.toJson(instance.duration));
  val['durationList'] =
      instance.durationList.map(durationConverter.toJson).toList();
  writeNotNull('bigInt', const BigIntStringConverter().toJson(instance.bigInt));
  val['bigIntMap'] = instance.bigIntMap
      .map((k, e) => MapEntry(k, const BigIntStringConverter().toJson(e)));
  writeNotNull('numberSilly',
      TrivialNumberConverter.instance.toJson(instance.numberSilly));
  val['numberSillySet'] = instance.numberSillySet
      .map(TrivialNumberConverter.instance.toJson)
      .toList();
  writeNotNull(
      'dateTime', const EpochDateTimeConverter().toJson(instance.dateTime));
  return val;
}

JsonConverterGeneric<S, T, U> _$JsonConverterGenericFromJson<S, T, U>(
    Map<String, dynamic> json) {
  return JsonConverterGeneric<S, T, U>()
    ..item =
        GenericConverter<S>().fromJson(json['item'] as Map<String, dynamic>)
    ..itemList = (json['itemList'] as List<dynamic>)
        .map((e) => GenericConverter<T>().fromJson(e as Map<String, dynamic>))
        .toList()
    ..itemMap = (json['itemMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          k, GenericConverter<U>().fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$JsonConverterGenericToJson<S, T, U>(
    JsonConverterGeneric<S, T, U> instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item', GenericConverter<S>().toJson(instance.item));
  val['itemList'] =
      instance.itemList.map(GenericConverter<T>().toJson).toList();
  val['itemMap'] = instance.itemMap
      .map((k, e) => MapEntry(k, GenericConverter<U>().toJson(e)));
  return val;
}
