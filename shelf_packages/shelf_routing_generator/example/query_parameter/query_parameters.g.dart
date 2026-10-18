// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unnecessary_raw_strings

part of 'query_parameters.dart';

// **************************************************************************
// RoutingGenerator
// **************************************************************************

Router _$QueryParametersControllerRouter(QueryParametersController service) =>
    Router()
      ..add('GET', '/single', (Request request) {
        return service.single(
          request,
          integer: $parseQueryParametersAll(
            request,
            'integer',
            (data) => int.parse(data!.single),
          ),
          double: $parseQueryParametersAll(
            request,
            'double',
            (data) => data != null && data.isNotEmpty
                ? double.parse(data.single)
                : null,
          ),
          string: $parseQueryParametersAll(
            request,
            'string',
            (data) => data!.single,
          ),
          stringOrNull: $parseQueryParametersAll(
            request,
            'stringOrNull',
            (data) => data != null && data.isNotEmpty ? data.single : null,
          ),
          customParser: $parseQueryParametersAll(
            request,
            'customParser',
            (data) => data != null && data.isNotEmpty
                ? DateTime.parse(data.single)
                : null,
          ),
        );
      })
      ..add('GET', '/list', (Request request) {
        return service.list(
          request,
          stringList: $parseQueryParametersAll(
            request,
            'stringList',
            (data) => data!,
          ),
          integerList: $parseQueryParametersAll(
            request,
            'integerList',
            (data) => data!.map(int.parse).toList(),
          ),
          customParserList: $parseQueryParametersAll(
            request,
            'customParserList',
            (data) => data!.map(DateTime.parse).toList(),
          ),
        );
      });
