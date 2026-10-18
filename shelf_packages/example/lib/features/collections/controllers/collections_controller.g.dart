// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: cast_nullable_to_non_nullable

part of 'collections_controller.dart';

// **************************************************************************
// RoutingGenerator
// **************************************************************************

Router _$CollectionsControllerRouter(CollectionsController service) => Router()
  ..add('POST', '/', (Request request) async {
    final data = await service.fetchCollections(
      request,
      languages: $parseQueryParametersAll(
        request,
        'languages',
        (data) => ISet.fromJson(data, (data) => data as String),
      ),
      conditions: $parseQueryParametersAll(
        request,
        'conditions',
        (data) =>
            ISet.fromJson(data, (data) => ChatType.fromJson(data as String)),
      ),
      languagesNullable: $parseQueryParametersAll(
        request,
        'languagesNullable',
        (data) =>
            data != null ? ISet.fromJson(data, (data) => data as String) : null,
      ),
      conditionsNullable: $parseQueryParametersAll(
        request,
        'conditionsNullable',
        (data) => data != null
            ? ISet.fromJson(data, (data) => ChatType.fromJson(data as String))
            : null,
      ),
    );
    return JsonResponse.ok(data.toJson((data) => data.toJson()));
  })
  ..add('PUT', '/', (Request request) async {
    await service.createCollections(
      request,
      await $readBodyAs(
        request,
        (data) => IList<CollectionDto>.fromJson(
          data! as dynamic,
          (data) => CollectionDto.fromJson(data! as Map<String, dynamic>),
        ),
      ),
    );
    return Response.ok(null);
  });
