part of json_mapper.test;

@jsonSerializable
class User {
  String _email;

  String get email => _email;

  set email(String email) => _email = email;
}

@jsonSerializable
class Foo {
  final Bar bar;
  final String message;

  Foo(this.bar, this.message);
}

@jsonSerializable
class Bar {
  final Baz baz;

  Bar(this.baz);
}

@jsonSerializable
class Baz {}

class Base<T> {
  final T value;

  Base(this.value);
}

@jsonSerializable
class Derived extends Base<String> {
  Derived(String value) : super(value);
}

@jsonSerializable
class Pt {
  Pt();
}

@jsonSerializable
class PtDerived extends Base<Pt> {
  PtDerived(Pt value) : super(value);
}

@jsonSerializable
class PtDerived2 extends Base<Pt> {
  final Pt pt;
  PtDerived2(this.pt) : super(null);
}

@jsonSerializable
class StringListClass {
  List<String> list;

  StringListClass(this.list);
}

@jsonSerializable
class PositionalParametersClass {
  String firstName;
  String lastName;

  PositionalParametersClass(this.firstName, this.lastName);
}

@jsonSerializable
class OptionalParametersClass {
  String firstName;
  String lastName;

  OptionalParametersClass([this.firstName, this.lastName]);
}

@jsonSerializable
class PartiallyOptionalParametersClass {
  String firstName;
  String lastName;

  PartiallyOptionalParametersClass(this.firstName, [this.lastName]);
}

@jsonSerializable
class NamedParametersClass {
  String firstName;
  String lastName;

  NamedParametersClass({this.firstName, this.lastName});
}

@jsonSerializable
@Json(ignoreNullMembers: true)
class IgnoreNullMembersClass {
  String firstName;
  String lastName;
  String middleName;

  IgnoreNullMembersClass({this.firstName, this.middleName, this.lastName});
}

@jsonSerializable
class IgnoredFieldClass {
  String firstName;

  @JsonProperty(ignore: true)
  String lastName;

  @JsonProperty(ignoreIfNull: true)
  String middleName;

  IgnoredFieldClass({this.firstName, this.middleName, this.lastName});
}

@jsonSerializable
class IgnoredFieldClassWoConstructor {
  String firstName;

  @JsonProperty(ignore: true)
  String lastName;

  @JsonProperty(ignoreIfNull: true)
  String middleName;
}

@jsonSerializable
class Immutable {
  final int id;
  final String name;
  final Car car;

  const Immutable(this.id, this.name, this.car);
}

testConstructors() {
  group("[Verify class constructors support]", () {
    final String json = '{"firstName":"Bob","lastName":"Marley"}';

    test("NamedParametersClass class", () {
      // given
      var instance = NamedParametersClass(firstName: "Bob", lastName: "Marley");
      // when
      final String target = JsonMapper.serialize(instance, '');
      // then
      expect(target, json);
    });

    test("PartiallyOptionalParametersClass class", () {
      // given
      var instance = PartiallyOptionalParametersClass("Bob", "Marley");
      // when
      final String target = JsonMapper.serialize(instance, '');
      // then
      expect(target, json);
    });

    test("OptionalParametersClass class", () {
      // given
      var instance = OptionalParametersClass("Bob", "Marley");
      // when
      final String target = JsonMapper.serialize(instance, '');
      // then
      expect(target, json);
    });

    test("PositionalParametersClass class", () {
      // given
      var instance = PositionalParametersClass("Bob", "Marley");
      // when
      final String target = JsonMapper.serialize(instance, '');
      // then
      expect(target, json);
    });

    test("Nested null value object should be null w/o NPE", () {
      // given
      final String json = '{"bar":null,"message":"hello world"}';
      final Foo target = Foo(null, "hello world");
      // when
      Foo instance = JsonMapper.deserialize(json);
      String targetJson = JsonMapper.serialize(target, '');
      // then
      expect(instance.message, "hello world");
      expect(targetJson, json);
    });

    test("Derived class", () {
      // given
      final String json = '{"value":"Bob"}';
      final Derived target = Derived("Bob");
      final PtDerived pTarget = PtDerived(Pt());
      final PtDerived2 ptTarget2 = PtDerived2(Pt());
      // when
      Derived instance = JsonMapper.deserialize(json);
      String targetJson = JsonMapper.serialize(target, '');
      String pTargetJson = JsonMapper.serialize(pTarget, '');
      String ptTarget2Json = JsonMapper.serialize(ptTarget2, '');
      PtDerived pTargetBack = JsonMapper.deserialize(pTargetJson);
      PtDerived2 ptTarget2Back = JsonMapper.deserialize(ptTarget2Json);
      // then
      expect(instance.value, "Bob");
      expect(targetJson, json);
      expect(pTargetBack.value, TypeMatcher<Pt>());
      expect(pTargetJson, '{"value":{}}');
      expect(ptTarget2Json, '{"value":null,"pt":{}}');
      expect(ptTarget2Back.pt, TypeMatcher<Pt>());
      expect(ptTarget2Back.value, null);
    });

    test("User class, getter/setter property w/o constructor", () {
      // given
      final User user = User();
      user.email = 'a@a.com';
      // when
      final json = JsonMapper.serialize(user, '');
      final User target = JsonMapper.deserialize(json);
      // then
      expect(json, '{"email":"a@a.com"}');
      expect(target, TypeMatcher<User>());
      expect(target.email, 'a@a.com');
    });

    test("StringListClass class", () {
      // given
      // when
      StringListClass instance =
          JsonMapper.deserialize('{"list":["Bob","Marley"]}');
      // then
      expect(instance.list.length, 2);
    });

    test("IgnoreNullMembers class", () {
      // given
      final instance = IgnoreNullMembersClass(firstName: "Bob");
      // when
      final target = JsonMapper.serialize(instance, '');
      // then
      expect(target, '{"firstName":"Bob"}');
    });

    test("IgnoredFieldClass class", () {
      // given
      final String json =
          '{"firstName":"Bob","middleName":"Jr","lastName":"Marley"}';
      var instance = IgnoredFieldClass(
          firstName: "Bob", middleName: null, lastName: "Marley");
      // when
      var target = JsonMapper.serialize(instance, '');
      // then
      expect(target, '{"firstName":"Bob"}');

      // when
      IgnoredFieldClass instance2 = JsonMapper.deserialize(json);
      IgnoredFieldClassWoConstructor instance3 = JsonMapper.deserialize(json);

      // then
      expect(instance2.firstName, "Bob");
      expect(instance2.middleName, "Jr");
      expect(instance2.lastName, null);

      expect(instance3.firstName, "Bob");
      expect(instance3.middleName, "Jr");
      expect(instance3.lastName, null);
    });

    test("Immutable class", () {
      // given
      final String immutableJson = '''{
 "id": 1,
 "name": "Bob",
 "car": {
  "modelName": "Audi",
  "color": "Color.Green"
 }
}''';
      Immutable i = Immutable(1, 'Bob', Car('Audi', Color.Green));
      // when
      final String target = JsonMapper.serialize(i);
      // then
      expect(target, immutableJson);

      // when
      final Immutable ic = JsonMapper.deserialize(immutableJson);
      // then
      expect(JsonMapper.serialize(ic), immutableJson);
    });
  });
}
