import 'package:simpleholmuskchat/src/models/friend.dart';
import 'package:simpleholmuskchat/src/service/api/friends_service.dart';
import 'package:simpleholmuskchat/src/service/mock_services/get_json_as_map.dart';

class JsonFriendsService implements FriendsService {
  @override
  Future<List<Friend>> getFriends([int page = 0]) async {
    final friendObjects =
        List.from(await getLocalJsonAsObject("json/friends.json"));
    final friendsList = friendObjects.map((e) => Friend.fromJson(e)).toList();
    return friendsList;
  }
}
