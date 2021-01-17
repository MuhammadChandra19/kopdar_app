///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const ContentMessage$json = const {
  '1': 'ContentMessage',
  '2': const [
    const {'1': 'room_key', '3': 1, '4': 1, '5': 9, '10': 'roomKey'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
  ],
};

const StreamConnect$json = const {
  '1': 'StreamConnect',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'room_key', '3': 2, '4': 1, '5': 9, '10': 'roomKey'},
    const {'1': 'active', '3': 3, '4': 1, '5': 8, '10': 'active'},
  ],
};

const Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'room_key', '3': 1, '4': 1, '5': 9, '10': 'roomKey'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'created_by', '3': 3, '4': 1, '5': 9, '10': 'createdBy'},
  ],
};

const UserRoom$json = const {
  '1': 'UserRoom',
  '2': const [
    const {'1': 'UUID', '3': 1, '4': 1, '5': 9, '10': 'UUID'},
    const {'1': 'room_key', '3': 2, '4': 1, '5': 9, '10': 'roomKey'},
    const {'1': 'user_email', '3': 3, '4': 1, '5': 9, '10': 'userEmail'},
  ],
};

const Point$json = const {
  '1': 'Point',
  '2': const [
    const {'1': 'room_key', '3': 1, '4': 1, '5': 9, '10': 'roomKey'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 5, '10': 'latitude'},
    const {'1': 'longitude', '3': 3, '4': 1, '5': 5, '10': 'longitude'},
  ],
};

const ResponseStream$json = const {
  '1': 'ResponseStream',
  '2': const [
    const {'1': 'is_message', '3': 1, '4': 1, '5': 8, '10': 'isMessage'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.v1.ContentMessage', '10': 'message'},
    const {'1': 'point', '3': 3, '4': 1, '5': 11, '6': '.v1.Point', '10': 'point'},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

