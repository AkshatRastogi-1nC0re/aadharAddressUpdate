// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatsRecord> _$chatsRecordSerializer = new _$ChatsRecordSerializer();

class _$ChatsRecordSerializer implements StructuredSerializer<ChatsRecord> {
  @override
  final Iterable<Type> types = const [ChatsRecord, _$ChatsRecord];
  @override
  final String wireName = 'ChatsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userA;
    if (value != null) {
      result
        ..add('user_a')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userB;
    if (value != null) {
      result
        ..add('user_b')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.lastMessage;
    if (value != null) {
      result
        ..add('last_message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastMessageTime;
    if (value != null) {
      result
        ..add('last_message_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lastMessageSeenBy;
    if (value != null) {
      result
        ..add('last_message_seen_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ChatsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_a':
          result.userA = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'user_b':
          result.userB = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'last_message':
          result.lastMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_message_time':
          result.lastMessageTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'last_message_seen_by':
          result.lastMessageSeenBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatsRecord extends ChatsRecord {
  @override
  final BuiltList<DocumentReference<Object>> users;
  @override
  final DocumentReference<Object> userA;
  @override
  final DocumentReference<Object> userB;
  @override
  final String lastMessage;
  @override
  final DateTime lastMessageTime;
  @override
  final BuiltList<DocumentReference<Object>> lastMessageSeenBy;
  @override
  final DocumentReference<Object> reference;

  factory _$ChatsRecord([void Function(ChatsRecordBuilder) updates]) =>
      (new ChatsRecordBuilder()..update(updates)).build();

  _$ChatsRecord._(
      {this.users,
      this.userA,
      this.userB,
      this.lastMessage,
      this.lastMessageTime,
      this.lastMessageSeenBy,
      this.reference})
      : super._();

  @override
  ChatsRecord rebuild(void Function(ChatsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatsRecordBuilder toBuilder() => new ChatsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatsRecord &&
        users == other.users &&
        userA == other.userA &&
        userB == other.userB &&
        lastMessage == other.lastMessage &&
        lastMessageTime == other.lastMessageTime &&
        lastMessageSeenBy == other.lastMessageSeenBy &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, users.hashCode), userA.hashCode),
                        userB.hashCode),
                    lastMessage.hashCode),
                lastMessageTime.hashCode),
            lastMessageSeenBy.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatsRecord')
          ..add('users', users)
          ..add('userA', userA)
          ..add('userB', userB)
          ..add('lastMessage', lastMessage)
          ..add('lastMessageTime', lastMessageTime)
          ..add('lastMessageSeenBy', lastMessageSeenBy)
          ..add('reference', reference))
        .toString();
  }
}

class ChatsRecordBuilder implements Builder<ChatsRecord, ChatsRecordBuilder> {
  _$ChatsRecord _$v;

  ListBuilder<DocumentReference<Object>> _users;
  ListBuilder<DocumentReference<Object>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object>>();
  set users(ListBuilder<DocumentReference<Object>> users) =>
      _$this._users = users;

  DocumentReference<Object> _userA;
  DocumentReference<Object> get userA => _$this._userA;
  set userA(DocumentReference<Object> userA) => _$this._userA = userA;

  DocumentReference<Object> _userB;
  DocumentReference<Object> get userB => _$this._userB;
  set userB(DocumentReference<Object> userB) => _$this._userB = userB;

  String _lastMessage;
  String get lastMessage => _$this._lastMessage;
  set lastMessage(String lastMessage) => _$this._lastMessage = lastMessage;

  DateTime _lastMessageTime;
  DateTime get lastMessageTime => _$this._lastMessageTime;
  set lastMessageTime(DateTime lastMessageTime) =>
      _$this._lastMessageTime = lastMessageTime;

  ListBuilder<DocumentReference<Object>> _lastMessageSeenBy;
  ListBuilder<DocumentReference<Object>> get lastMessageSeenBy =>
      _$this._lastMessageSeenBy ??=
          new ListBuilder<DocumentReference<Object>>();
  set lastMessageSeenBy(
          ListBuilder<DocumentReference<Object>> lastMessageSeenBy) =>
      _$this._lastMessageSeenBy = lastMessageSeenBy;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ChatsRecordBuilder() {
    ChatsRecord._initializeBuilder(this);
  }

  ChatsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _userA = $v.userA;
      _userB = $v.userB;
      _lastMessage = $v.lastMessage;
      _lastMessageTime = $v.lastMessageTime;
      _lastMessageSeenBy = $v.lastMessageSeenBy?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatsRecord;
  }

  @override
  void update(void Function(ChatsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatsRecord build() {
    _$ChatsRecord _$result;
    try {
      _$result = _$v ??
          new _$ChatsRecord._(
              users: _users?.build(),
              userA: userA,
              userB: userB,
              lastMessage: lastMessage,
              lastMessageTime: lastMessageTime,
              lastMessageSeenBy: _lastMessageSeenBy?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();

        _$failedField = 'lastMessageSeenBy';
        _lastMessageSeenBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChatsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
