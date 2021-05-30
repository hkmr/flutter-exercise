/*

	Similarity between Stream and ValueStream:
		=> Stream provides the way to recieve a sequence of events (zero or more).
		=> ValueStream is similar to stream with additional facility to access last emitted event.

	Similarity between Stream and BehaviourSubject:
		=> BehaviourSubject is special StreamController that captures the latest item that has been added to the controller, and emits that as the first item to any new listener where as Stream doesn't provides this facility.

	Similarity between ValueStream and BehaviourSubject:
		=> ValueStream is Abstract class which is implemented by the BehaviourSubject.


*/


import 'package:rxdart/rxdart.dart';


void main() {
	fetchData();
}

void fetchData() {

	BehaviorSubject sub = BehaviorSubject<String>();

	sub.map((event) => event.toUpperCase()).listen((value) {
		print('$value from first subscriber');
	});

	sub.add('First');
	sub.add('second');

	sub.listen((value) {
		print('$value from second subscriber');
	});

}