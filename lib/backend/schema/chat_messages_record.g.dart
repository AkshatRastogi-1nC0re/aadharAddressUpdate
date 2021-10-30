// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatMessagesRecord> _$chatMessagesRecordSerializer =
    new _$ChatMessagesRecordSerializer();

class _$ChatMessagesRecordSerializer
    implements StructuredSerializer<ChatMessagesRecord> {
  @override
  final Iterable<Type> types = const [ChatMessagesRecord, _$ChatMessagesRecord];
  @override
  final String wireName = 'ChatMessagesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatMessagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.chat;
    if (value != null) {
      result
        ..add('chat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ChatMessagesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatMessagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'chat':
          result.chat = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ChatMessagesRecord extends ChatMessagesRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> chat;
  @override
  final String text;
  @override
  final String image;
  @override
  final DateTime timestamp;
  @override
  final DocumentReference<Object> reference;

  factory _$ChatMessagesRecord(
          [void Function(ChatMessagesRecordBuilder) updates]) =>
      (new ChatMessagesRecordBuilder()..update(updates)).build();

  _$ChatMessagesRecord._(
      {this.user,
      this.chat,
      this.text,
      this.image,
      this.timestamp,
      this.reference})
      : super._();

  @override
  ChatMessagesRecord rebuild(
          void Function(ChatMessagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessagesRecordBuilder toBuilder() =>
      new ChatMessagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessagesRecord &&
        user == other.user &&
        chat == other.chat &&
        text == other.text &&
        image == other.image &&
        timestamp == other.timestamp &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, user.hashCode), chat.hashCode), text.hashCode),
                image.hashCode),
            timestamp.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatMessagesRecord')
          ..add('user', user)
          ..add('chat', chat)
          ..add('text', text)
          ..add('image', image)
          ..add('timestamp', timestamp)
          ..add('reference', reference))
        .toString();
  }
}

class ChatMessagesRecordBuilder
    implements Builder<ChatMessagesRecord, ChatMessagesRecordBuilder> {
  _$ChatMessagesRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _chat;
  DocumentReference<Object> get chat => _$this._chat;
  set chat(DocumentReference<Object> chat) => _$this._chat = chat;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ChatMessagesRecordBuilder() {
    ChatMessagesRecord._initializeBuilder(this);
  }

  ChatMessagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _chat = $v.chat;
      _text = $v.text;
      _image = $v.image;
      _timestamp = $v.timestamp;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessagesRecord;
  }

  @override
  void update(void Function(ChatMessagesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatMessagesRecord build() {
    final _$result = _$v ??
        new _$ChatMessagesRecord._(
            user: user,
            chat: chat,
            text: text,
            image: image,
            timestamp: timestamp,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
