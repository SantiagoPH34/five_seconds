// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_tracked.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppTrackedCollection on Isar {
  IsarCollection<AppTracked> get appTrackeds => this.collection();
}

const AppTrackedSchema = CollectionSchema(
  name: r'AppTracked',
  id: -3762529481506826599,
  properties: {
    r'appSesion': PropertySchema(
      id: 0,
      name: r'appSesion',
      type: IsarType.objectList,
      target: r'AppSession',
    ),
    r'icon': PropertySchema(
      id: 1,
      name: r'icon',
      type: IsarType.longList,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'packagename': PropertySchema(
      id: 3,
      name: r'packagename',
      type: IsarType.string,
    ),
    r'totalLounches': PropertySchema(
      id: 4,
      name: r'totalLounches',
      type: IsarType.long,
    )
  },
  estimateSize: _appTrackedEstimateSize,
  serialize: _appTrackedSerialize,
  deserialize: _appTrackedDeserialize,
  deserializeProp: _appTrackedDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'AppSession': AppSessionSchema},
  getId: _appTrackedGetId,
  getLinks: _appTrackedGetLinks,
  attach: _appTrackedAttach,
  version: '3.1.0+1',
);

int _appTrackedEstimateSize(
  AppTracked object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.appSesion.length * 3;
  {
    final offsets = allOffsets[AppSession]!;
    for (var i = 0; i < object.appSesion.length; i++) {
      final value = object.appSesion[i];
      bytesCount += AppSessionSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.icon.length * 8;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.packagename.length * 3;
  return bytesCount;
}

void _appTrackedSerialize(
  AppTracked object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<AppSession>(
    offsets[0],
    allOffsets,
    AppSessionSchema.serialize,
    object.appSesion,
  );
  writer.writeLongList(offsets[1], object.icon);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.packagename);
  writer.writeLong(offsets[4], object.totalLounches);
}

AppTracked _appTrackedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppTracked(
    appSesion: reader.readObjectList<AppSession>(
          offsets[0],
          AppSessionSchema.deserialize,
          allOffsets,
          AppSession(),
        ) ??
        const [],
    icon: reader.readLongList(offsets[1]) ?? [],
    name: reader.readString(offsets[2]),
    packagename: reader.readString(offsets[3]),
    totalLounches: reader.readLong(offsets[4]),
  );
  object.isarId = id;
  return object;
}

P _appTrackedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<AppSession>(
            offset,
            AppSessionSchema.deserialize,
            allOffsets,
            AppSession(),
          ) ??
          const []) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appTrackedGetId(AppTracked object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _appTrackedGetLinks(AppTracked object) {
  return [];
}

void _appTrackedAttach(IsarCollection<dynamic> col, Id id, AppTracked object) {
  object.isarId = id;
}

extension AppTrackedQueryWhereSort
    on QueryBuilder<AppTracked, AppTracked, QWhere> {
  QueryBuilder<AppTracked, AppTracked, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppTrackedQueryWhere
    on QueryBuilder<AppTracked, AppTracked, QWhereClause> {
  QueryBuilder<AppTracked, AppTracked, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppTrackedQueryFilter
    on QueryBuilder<AppTracked, AppTracked, QFilterCondition> {
  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      appSesionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'appSesion',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      appSesionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'appSesion',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      appSesionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'appSesion',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      appSesionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'appSesion',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      appSesionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'appSesion',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      appSesionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'appSesion',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      iconElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      iconElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      iconElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      iconElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> iconLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      iconLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      iconLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> iconLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packagename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'packagename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'packagename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'packagename',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'packagename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'packagename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'packagename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'packagename',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packagename',
        value: '',
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      packagenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'packagename',
        value: '',
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      totalLounchesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalLounches',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      totalLounchesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalLounches',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      totalLounchesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalLounches',
        value: value,
      ));
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition>
      totalLounchesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalLounches',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppTrackedQueryObject
    on QueryBuilder<AppTracked, AppTracked, QFilterCondition> {
  QueryBuilder<AppTracked, AppTracked, QAfterFilterCondition> appSesionElement(
      FilterQuery<AppSession> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'appSesion');
    });
  }
}

extension AppTrackedQueryLinks
    on QueryBuilder<AppTracked, AppTracked, QFilterCondition> {}

extension AppTrackedQuerySortBy
    on QueryBuilder<AppTracked, AppTracked, QSortBy> {
  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> sortByPackagename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packagename', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> sortByPackagenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packagename', Sort.desc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> sortByTotalLounches() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLounches', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> sortByTotalLounchesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLounches', Sort.desc);
    });
  }
}

extension AppTrackedQuerySortThenBy
    on QueryBuilder<AppTracked, AppTracked, QSortThenBy> {
  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByPackagename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packagename', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByPackagenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packagename', Sort.desc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByTotalLounches() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLounches', Sort.asc);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QAfterSortBy> thenByTotalLounchesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLounches', Sort.desc);
    });
  }
}

extension AppTrackedQueryWhereDistinct
    on QueryBuilder<AppTracked, AppTracked, QDistinct> {
  QueryBuilder<AppTracked, AppTracked, QDistinct> distinctByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon');
    });
  }

  QueryBuilder<AppTracked, AppTracked, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QDistinct> distinctByPackagename(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packagename', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppTracked, AppTracked, QDistinct> distinctByTotalLounches() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalLounches');
    });
  }
}

extension AppTrackedQueryProperty
    on QueryBuilder<AppTracked, AppTracked, QQueryProperty> {
  QueryBuilder<AppTracked, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<AppTracked, List<AppSession>, QQueryOperations>
      appSesionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appSesion');
    });
  }

  QueryBuilder<AppTracked, List<int>, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<AppTracked, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<AppTracked, String, QQueryOperations> packagenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packagename');
    });
  }

  QueryBuilder<AppTracked, int, QQueryOperations> totalLounchesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalLounches');
    });
  }
}
