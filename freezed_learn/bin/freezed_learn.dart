import 'freezed_classes.dart';

void main() {
  print('Hello world!');

  var obj = {
	  'name': 'Viraj',
	  'age': 28
  };

  final user = User(name: 'harsh', age: 24);

  var user2 = user.copyWith(name: 'harsh');
  var user3 = User.fromJson(obj);

  print(user.toJson());
  print(user == user2);
  print(user3);
  
}
