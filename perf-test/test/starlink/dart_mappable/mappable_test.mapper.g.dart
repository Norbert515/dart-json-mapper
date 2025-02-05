// ignore_for_file: unused_element
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import 'mappable_test.dart' as p0;


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  SpaceTrackMapper._(),
  RecordMapper._(),
  // enum mappers
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class SpaceTrackMapper extends BaseMapper<p0.SpaceTrack> {
  SpaceTrackMapper._();

  @override Function get decoder => decode;
  p0.SpaceTrack decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  p0.SpaceTrack fromMap(Map<String, dynamic> map) => p0.SpaceTrack(Mapper.i.$get(map, 'COMMENT'), Mapper.i.$getOpt(map, 'DECAY_DATE'), Mapper.i.$get(map, 'CENTER_NAME'), Mapper.i.$get(map, 'ARG_OF_PERICENTER'), Mapper.i.$get(map, 'APOAPSIS'), Mapper.i.$get(map, 'BSTAR'), Mapper.i.$get(map, 'CCSDS_OMM_VERS'), Mapper.i.$get(map, 'CLASSIFICATION_TYPE'), Mapper.i.$get(map, 'CREATION_DATE'), Mapper.i.$get(map, 'COUNTRY_CODE'), Mapper.i.$get(map, 'DECAYED'), Mapper.i.$get(map, 'ECCENTRICITY'), Mapper.i.$get(map, 'ELEMENT_SET_NO'), Mapper.i.$get(map, 'EPHEMERIS_TYPE'), Mapper.i.$get(map, 'EPOCH'), Mapper.i.$get(map, 'FILE'), Mapper.i.$get(map, 'GP_ID'), Mapper.i.$get(map, 'LAUNCH_DATE'), Mapper.i.$get(map, 'MEAN_ANOMALY'), Mapper.i.$get(map, 'MEAN_ELEMENT_THEORY'), Mapper.i.$get(map, 'MEAN_MOTION'), Mapper.i.$get(map, 'MEAN_MOTION_DDOT'), Mapper.i.$get(map, 'MEAN_MOTION_DOT'), Mapper.i.$get(map, 'NORAD_CAT_ID'), Mapper.i.$get(map, 'OBJECT_ID'), Mapper.i.$get(map, 'OBJECT_NAME'), Mapper.i.$get(map, 'OBJECT_TYPE'), Mapper.i.$get(map, 'ORIGINATOR'), Mapper.i.$get(map, 'PERIAPSIS'), Mapper.i.$get(map, 'PERIOD'), Mapper.i.$get(map, 'RA_OF_ASC_NODE'), Mapper.i.$get(map, 'RCS_SIZE'), Mapper.i.$get(map, 'REF_FRAME'), Mapper.i.$get(map, 'REV_AT_EPOCH'), Mapper.i.$get(map, 'SEMIMAJOR_AXIS'), Mapper.i.$get(map, 'SITE'), Mapper.i.$get(map, 'TIME_SYSTEM'), Mapper.i.$get(map, 'TLE_LINE0'), Mapper.i.$get(map, 'TLE_LINE1'), Mapper.i.$get(map, 'TLE_LINE2'));

  @override Function get encoder => encode;
  dynamic encode(p0.SpaceTrack v) => toMap(v);
  Map<String, dynamic> toMap(p0.SpaceTrack s) => {'COMMENT': Mapper.i.$enc(s.comment, 'comment'), 'DECAY_DATE': Mapper.i.$enc(s.decayDate, 'decayDate'), 'CENTER_NAME': Mapper.i.$enc(s.centerName, 'centerName'), 'ARG_OF_PERICENTER': Mapper.i.$enc(s.argOfPericenter, 'argOfPericenter'), 'APOAPSIS': Mapper.i.$enc(s.apoapsis, 'apoapsis'), 'BSTAR': Mapper.i.$enc(s.bstar, 'bstar'), 'CCSDS_OMM_VERS': Mapper.i.$enc(s.ccsdsOmmVers, 'ccsdsOmmVers'), 'CLASSIFICATION_TYPE': Mapper.i.$enc(s.classificationType, 'classificationType'), 'CREATION_DATE': Mapper.i.$enc(s.creationDate, 'creationDate'), 'COUNTRY_CODE': Mapper.i.$enc(s.countryCode, 'countryCode'), 'DECAYED': Mapper.i.$enc(s.decayed, 'decayed'), 'ECCENTRICITY': Mapper.i.$enc(s.eccentricity, 'eccentricity'), 'ELEMENT_SET_NO': Mapper.i.$enc(s.elementSetNo, 'elementSetNo'), 'EPHEMERIS_TYPE': Mapper.i.$enc(s.ephemerisType, 'ephemerisType'), 'EPOCH': Mapper.i.$enc(s.epoch, 'epoch'), 'FILE': Mapper.i.$enc(s.file, 'file'), 'GP_ID': Mapper.i.$enc(s.gpId, 'gpId'), 'LAUNCH_DATE': Mapper.i.$enc(s.launchDate, 'launchDate'), 'MEAN_ANOMALY': Mapper.i.$enc(s.meanAnomaly, 'meanAnomaly'), 'MEAN_ELEMENT_THEORY': Mapper.i.$enc(s.meanElementTheory, 'meanElementTheory'), 'MEAN_MOTION': Mapper.i.$enc(s.meanMotion, 'meanMotion'), 'MEAN_MOTION_DDOT': Mapper.i.$enc(s.meanMotionDdot, 'meanMotionDdot'), 'MEAN_MOTION_DOT': Mapper.i.$enc(s.meanMotionDot, 'meanMotionDot'), 'NORAD_CAT_ID': Mapper.i.$enc(s.noradCatId, 'noradCatId'), 'OBJECT_ID': Mapper.i.$enc(s.objectId, 'objectId'), 'OBJECT_NAME': Mapper.i.$enc(s.objectName, 'objectName'), 'OBJECT_TYPE': Mapper.i.$enc(s.objectType, 'objectType'), 'ORIGINATOR': Mapper.i.$enc(s.originator, 'originator'), 'PERIAPSIS': Mapper.i.$enc(s.periapsis, 'periapsis'), 'PERIOD': Mapper.i.$enc(s.period, 'period'), 'RA_OF_ASC_NODE': Mapper.i.$enc(s.raOfAscNode, 'raOfAscNode'), 'RCS_SIZE': Mapper.i.$enc(s.rcsSize, 'rcsSize'), 'REF_FRAME': Mapper.i.$enc(s.refFrame, 'refFrame'), 'REV_AT_EPOCH': Mapper.i.$enc(s.revAtEpoch, 'revAtEpoch'), 'SEMIMAJOR_AXIS': Mapper.i.$enc(s.semimajorAxis, 'semimajorAxis'), 'SITE': Mapper.i.$enc(s.site, 'site'), 'TIME_SYSTEM': Mapper.i.$enc(s.timeSystem, 'timeSystem'), 'TLE_LINE0': Mapper.i.$enc(s.tleLine0, 'tleLine0'), 'TLE_LINE1': Mapper.i.$enc(s.tleLine1, 'tleLine1'), 'TLE_LINE2': Mapper.i.$enc(s.tleLine2, 'tleLine2')};

  @override String stringify(p0.SpaceTrack self) => 'SpaceTrack(ccsdsOmmVers: ${Mapper.asString(self.ccsdsOmmVers)}, comment: ${Mapper.asString(self.comment)}, originator: ${Mapper.asString(self.originator)}, objectName: ${Mapper.asString(self.objectName)}, objectId: ${Mapper.asString(self.objectId)}, objectType: ${Mapper.asString(self.objectType)}, centerName: ${Mapper.asString(self.centerName)}, refFrame: ${Mapper.asString(self.refFrame)}, timeSystem: ${Mapper.asString(self.timeSystem)}, meanElementTheory: ${Mapper.asString(self.meanElementTheory)}, classificationType: ${Mapper.asString(self.classificationType)}, rcsSize: ${Mapper.asString(self.rcsSize)}, countryCode: ${Mapper.asString(self.countryCode)}, site: ${Mapper.asString(self.site)}, tleLine0: ${Mapper.asString(self.tleLine0)}, tleLine1: ${Mapper.asString(self.tleLine1)}, tleLine2: ${Mapper.asString(self.tleLine2)}, meanMotion: ${Mapper.asString(self.meanMotion)}, eccentricity: ${Mapper.asString(self.eccentricity)}, raOfAscNode: ${Mapper.asString(self.raOfAscNode)}, argOfPericenter: ${Mapper.asString(self.argOfPericenter)}, meanAnomaly: ${Mapper.asString(self.meanAnomaly)}, ephemerisType: ${Mapper.asString(self.ephemerisType)}, noradCatId: ${Mapper.asString(self.noradCatId)}, elementSetNo: ${Mapper.asString(self.elementSetNo)}, revAtEpoch: ${Mapper.asString(self.revAtEpoch)}, bstar: ${Mapper.asString(self.bstar)}, meanMotionDot: ${Mapper.asString(self.meanMotionDot)}, meanMotionDdot: ${Mapper.asString(self.meanMotionDdot)}, semimajorAxis: ${Mapper.asString(self.semimajorAxis)}, period: ${Mapper.asString(self.period)}, apoapsis: ${Mapper.asString(self.apoapsis)}, periapsis: ${Mapper.asString(self.periapsis)}, decayed: ${Mapper.asString(self.decayed)}, file: ${Mapper.asString(self.file)}, gpId: ${Mapper.asString(self.gpId)}, decayDate: ${Mapper.asString(self.decayDate)}, creationDate: ${Mapper.asString(self.creationDate)}, epoch: ${Mapper.asString(self.epoch)}, launchDate: ${Mapper.asString(self.launchDate)})';
  @override int hash(p0.SpaceTrack self) => Mapper.hash(self.ccsdsOmmVers) ^ Mapper.hash(self.comment) ^ Mapper.hash(self.originator) ^ Mapper.hash(self.objectName) ^ Mapper.hash(self.objectId) ^ Mapper.hash(self.objectType) ^ Mapper.hash(self.centerName) ^ Mapper.hash(self.refFrame) ^ Mapper.hash(self.timeSystem) ^ Mapper.hash(self.meanElementTheory) ^ Mapper.hash(self.classificationType) ^ Mapper.hash(self.rcsSize) ^ Mapper.hash(self.countryCode) ^ Mapper.hash(self.site) ^ Mapper.hash(self.tleLine0) ^ Mapper.hash(self.tleLine1) ^ Mapper.hash(self.tleLine2) ^ Mapper.hash(self.meanMotion) ^ Mapper.hash(self.eccentricity) ^ Mapper.hash(self.raOfAscNode) ^ Mapper.hash(self.argOfPericenter) ^ Mapper.hash(self.meanAnomaly) ^ Mapper.hash(self.ephemerisType) ^ Mapper.hash(self.noradCatId) ^ Mapper.hash(self.elementSetNo) ^ Mapper.hash(self.revAtEpoch) ^ Mapper.hash(self.bstar) ^ Mapper.hash(self.meanMotionDot) ^ Mapper.hash(self.meanMotionDdot) ^ Mapper.hash(self.semimajorAxis) ^ Mapper.hash(self.period) ^ Mapper.hash(self.apoapsis) ^ Mapper.hash(self.periapsis) ^ Mapper.hash(self.decayed) ^ Mapper.hash(self.file) ^ Mapper.hash(self.gpId) ^ Mapper.hash(self.decayDate) ^ Mapper.hash(self.creationDate) ^ Mapper.hash(self.epoch) ^ Mapper.hash(self.launchDate);
  @override bool equals(p0.SpaceTrack self, p0.SpaceTrack other) => Mapper.isEqual(self.ccsdsOmmVers, other.ccsdsOmmVers) && Mapper.isEqual(self.comment, other.comment) && Mapper.isEqual(self.originator, other.originator) && Mapper.isEqual(self.objectName, other.objectName) && Mapper.isEqual(self.objectId, other.objectId) && Mapper.isEqual(self.objectType, other.objectType) && Mapper.isEqual(self.centerName, other.centerName) && Mapper.isEqual(self.refFrame, other.refFrame) && Mapper.isEqual(self.timeSystem, other.timeSystem) && Mapper.isEqual(self.meanElementTheory, other.meanElementTheory) && Mapper.isEqual(self.classificationType, other.classificationType) && Mapper.isEqual(self.rcsSize, other.rcsSize) && Mapper.isEqual(self.countryCode, other.countryCode) && Mapper.isEqual(self.site, other.site) && Mapper.isEqual(self.tleLine0, other.tleLine0) && Mapper.isEqual(self.tleLine1, other.tleLine1) && Mapper.isEqual(self.tleLine2, other.tleLine2) && Mapper.isEqual(self.meanMotion, other.meanMotion) && Mapper.isEqual(self.eccentricity, other.eccentricity) && Mapper.isEqual(self.raOfAscNode, other.raOfAscNode) && Mapper.isEqual(self.argOfPericenter, other.argOfPericenter) && Mapper.isEqual(self.meanAnomaly, other.meanAnomaly) && Mapper.isEqual(self.ephemerisType, other.ephemerisType) && Mapper.isEqual(self.noradCatId, other.noradCatId) && Mapper.isEqual(self.elementSetNo, other.elementSetNo) && Mapper.isEqual(self.revAtEpoch, other.revAtEpoch) && Mapper.isEqual(self.bstar, other.bstar) && Mapper.isEqual(self.meanMotionDot, other.meanMotionDot) && Mapper.isEqual(self.meanMotionDdot, other.meanMotionDdot) && Mapper.isEqual(self.semimajorAxis, other.semimajorAxis) && Mapper.isEqual(self.period, other.period) && Mapper.isEqual(self.apoapsis, other.apoapsis) && Mapper.isEqual(self.periapsis, other.periapsis) && Mapper.isEqual(self.decayed, other.decayed) && Mapper.isEqual(self.file, other.file) && Mapper.isEqual(self.gpId, other.gpId) && Mapper.isEqual(self.decayDate, other.decayDate) && Mapper.isEqual(self.creationDate, other.creationDate) && Mapper.isEqual(self.epoch, other.epoch) && Mapper.isEqual(self.launchDate, other.launchDate);

  @override Function get typeFactory => (f) => f<p0.SpaceTrack>();
}

mixin SpaceTrackMappable implements MappableMixin {
  String toJson() => Mapper.toJson(this as p0.SpaceTrack);
  Map<String, dynamic> toMap() => Mapper.toMap(this as p0.SpaceTrack);
  SpaceTrackCopyWith<p0.SpaceTrack> get copyWith => _SpaceTrackCopyWithImpl(this as p0.SpaceTrack, $identity, $identity);
  @override String toString() => Mapper.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && Mapper.isEqual(this, other));
  @override int get hashCode => Mapper.hash(this);
}

extension SpaceTrackObjectCopy<$R> on ObjectCopyWith<$R, p0.SpaceTrack, p0.SpaceTrack> {
  SpaceTrackCopyWith<$R> get asSpaceTrack => base.as((v, t, t2) => _SpaceTrackCopyWithImpl(v, t, t2));
}

abstract class SpaceTrackCopyWith<$R> implements ObjectCopyWith<$R, p0.SpaceTrack, p0.SpaceTrack> {
  SpaceTrackCopyWith<$R2> _chain<$R2>(Then<p0.SpaceTrack, p0.SpaceTrack> t, Then<p0.SpaceTrack, $R2> t2);
  $R call({String? comment, DateTime? decayDate, String? centerName, num? argOfPericenter, num? apoapsis, num? bstar, String? ccsdsOmmVers, String? classificationType, DateTime? creationDate, String? countryCode, num? decayed, num? eccentricity, num? elementSetNo, num? ephemerisType, DateTime? epoch, num? file, num? gpId, DateTime? launchDate, num? meanAnomaly, String? meanElementTheory, num? meanMotion, num? meanMotionDdot, num? meanMotionDot, num? noradCatId, String? objectId, String? objectName, String? objectType, String? originator, num? periapsis, num? period, num? raOfAscNode, String? rcsSize, String? refFrame, num? revAtEpoch, num? semimajorAxis, String? site, String? timeSystem, String? tleLine0, String? tleLine1, String? tleLine2});
}

class _SpaceTrackCopyWithImpl<$R> extends BaseCopyWith<$R, p0.SpaceTrack, p0.SpaceTrack> implements SpaceTrackCopyWith<$R> {
  _SpaceTrackCopyWithImpl(super.value, super.then, super.then2);
  @override SpaceTrackCopyWith<$R2> _chain<$R2>(Then<p0.SpaceTrack, p0.SpaceTrack> t, Then<p0.SpaceTrack, $R2> t2) => _SpaceTrackCopyWithImpl($value, t, t2);

  @override $R call({String? comment, Object? decayDate = $none, String? centerName, num? argOfPericenter, num? apoapsis, num? bstar, String? ccsdsOmmVers, String? classificationType, DateTime? creationDate, String? countryCode, num? decayed, num? eccentricity, num? elementSetNo, num? ephemerisType, DateTime? epoch, num? file, num? gpId, DateTime? launchDate, num? meanAnomaly, String? meanElementTheory, num? meanMotion, num? meanMotionDdot, num? meanMotionDot, num? noradCatId, String? objectId, String? objectName, String? objectType, String? originator, num? periapsis, num? period, num? raOfAscNode, String? rcsSize, String? refFrame, num? revAtEpoch, num? semimajorAxis, String? site, String? timeSystem, String? tleLine0, String? tleLine1, String? tleLine2}) => $then(p0.SpaceTrack(comment ?? $value.comment, or(decayDate, $value.decayDate), centerName ?? $value.centerName, argOfPericenter ?? $value.argOfPericenter, apoapsis ?? $value.apoapsis, bstar ?? $value.bstar, ccsdsOmmVers ?? $value.ccsdsOmmVers, classificationType ?? $value.classificationType, creationDate ?? $value.creationDate, countryCode ?? $value.countryCode, decayed ?? $value.decayed, eccentricity ?? $value.eccentricity, elementSetNo ?? $value.elementSetNo, ephemerisType ?? $value.ephemerisType, epoch ?? $value.epoch, file ?? $value.file, gpId ?? $value.gpId, launchDate ?? $value.launchDate, meanAnomaly ?? $value.meanAnomaly, meanElementTheory ?? $value.meanElementTheory, meanMotion ?? $value.meanMotion, meanMotionDdot ?? $value.meanMotionDdot, meanMotionDot ?? $value.meanMotionDot, noradCatId ?? $value.noradCatId, objectId ?? $value.objectId, objectName ?? $value.objectName, objectType ?? $value.objectType, originator ?? $value.originator, periapsis ?? $value.periapsis, period ?? $value.period, raOfAscNode ?? $value.raOfAscNode, rcsSize ?? $value.rcsSize, refFrame ?? $value.refFrame, revAtEpoch ?? $value.revAtEpoch, semimajorAxis ?? $value.semimajorAxis, site ?? $value.site, timeSystem ?? $value.timeSystem, tleLine0 ?? $value.tleLine0, tleLine1 ?? $value.tleLine1, tleLine2 ?? $value.tleLine2));
}

class RecordMapper extends BaseMapper<p0.Record> {
  RecordMapper._();

  @override Function get decoder => decode;
  p0.Record decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  p0.Record fromMap(Map<String, dynamic> map) => p0.Record(Mapper.i.$get(map, 'id'), Mapper.i.$get(map, 'version'), Mapper.i.$get(map, 'launch'), Mapper.i.$get(map, 'spaceTrack'));

  @override Function get encoder => encode;
  dynamic encode(p0.Record v) => toMap(v);
  Map<String, dynamic> toMap(p0.Record r) => {'id': Mapper.i.$enc(r.id, 'id'), 'version': Mapper.i.$enc(r.version, 'version'), 'launch': Mapper.i.$enc(r.launch, 'launch'), 'spaceTrack': Mapper.i.$enc(r.spaceTrack, 'spaceTrack')};

  @override String stringify(p0.Record self) => 'Record(spaceTrack: ${Mapper.asString(self.spaceTrack)}, version: ${Mapper.asString(self.version)}, id: ${Mapper.asString(self.id)}, launch: ${Mapper.asString(self.launch)})';
  @override int hash(p0.Record self) => Mapper.hash(self.spaceTrack) ^ Mapper.hash(self.version) ^ Mapper.hash(self.id) ^ Mapper.hash(self.launch);
  @override bool equals(p0.Record self, p0.Record other) => Mapper.isEqual(self.spaceTrack, other.spaceTrack) && Mapper.isEqual(self.version, other.version) && Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.launch, other.launch);

  @override Function get typeFactory => (f) => f<p0.Record>();
}

mixin RecordMappable implements MappableMixin {
  String toJson() => Mapper.toJson(this as p0.Record);
  Map<String, dynamic> toMap() => Mapper.toMap(this as p0.Record);
  RecordCopyWith<p0.Record> get copyWith => _RecordCopyWithImpl(this as p0.Record, $identity, $identity);
  @override String toString() => Mapper.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && Mapper.isEqual(this, other));
  @override int get hashCode => Mapper.hash(this);
}

extension RecordObjectCopy<$R> on ObjectCopyWith<$R, p0.Record, p0.Record> {
  RecordCopyWith<$R> get asRecord => base.as((v, t, t2) => _RecordCopyWithImpl(v, t, t2));
}

abstract class RecordCopyWith<$R> implements ObjectCopyWith<$R, p0.Record, p0.Record> {
  RecordCopyWith<$R2> _chain<$R2>(Then<p0.Record, p0.Record> t, Then<p0.Record, $R2> t2);
  SpaceTrackCopyWith<$R> get spaceTrack;
  $R call({String? id, String? version, String? launch, p0.SpaceTrack? spaceTrack});
}

class _RecordCopyWithImpl<$R> extends BaseCopyWith<$R, p0.Record, p0.Record> implements RecordCopyWith<$R> {
  _RecordCopyWithImpl(super.value, super.then, super.then2);
  @override RecordCopyWith<$R2> _chain<$R2>(Then<p0.Record, p0.Record> t, Then<p0.Record, $R2> t2) => _RecordCopyWithImpl($value, t, t2);

  @override SpaceTrackCopyWith<$R> get spaceTrack => $value.spaceTrack.copyWith._chain($identity, (v) => call(spaceTrack: v));
  @override $R call({String? id, String? version, String? launch, p0.SpaceTrack? spaceTrack}) => $then(p0.Record(id ?? $value.id, version ?? $value.version, launch ?? $value.launch, spaceTrack ?? $value.spaceTrack));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===




// === GENERATED UTILITY CODE ===

class Mapper {
  Mapper._();

  static MapperContainer i = MapperContainer(_mappers);

  static T fromValue<T>(dynamic value) => i.fromValue<T>(value);
  static T fromMap<T>(Map<String, dynamic> map) => i.fromMap<T>(map);
  static T fromIterable<T>(Iterable<dynamic> iterable) => i.fromIterable<T>(iterable);
  static T fromJson<T>(String json) => i.fromJson<T>(json);

  static dynamic toValue<T>(T value) => i.toValue<T>(value);
  static Map<String, dynamic> toMap<T>(T object) => i.toMap<T>(object);
  static Iterable<dynamic> toIterable<T>(T object) => i.toIterable<T>(object);
  static String toJson<T>(T object) => i.toJson<T>(object);

  static bool isEqual(dynamic value, Object? other) => i.isEqual(value, other);
  static int hash(dynamic value) => i.hash(value);
  static String asString(dynamic value) => i.asString(value);

  static void use<T>(BaseMapper<T> mapper) => i.use<T>(mapper);
  static BaseMapper<T>? unuse<T>() => i.unuse<T>();
  static void useAll(List<BaseMapper> mappers) => i.useAll(mappers);

  static BaseMapper<T>? get<T>([Type? type]) => i.get<T>(type);
  static List<BaseMapper> getAll() => i.getAll();
}

extension _ChainedCopyWith<Result, In, Out> on ObjectCopyWith<Result, In, Out> {
  BaseCopyWith<Result, In, Out> get base => this as BaseCopyWith<Result, In, Out>;
}
