/*

  Dart doesn’t have the keywords public, protected, and private. If an identifier starts with an underscore (_), it’s private to its library.

  Dart is a lexically scoped language, which means that the scope of variables is determined statically, simply by the layout of the code.

  Example:

  String name = 'John';

  void main(){

    String name1 = 'Steve';

    void fun(){
      String name2 = 'Bob';

      print(name);
      print(name1);
      print(name2);
    }

    fun();

  }

*/


/*

  Yes, we can make methods as well as class private in dart.
  It can be only accessed with the same library(file).

*/

void main() {
	_A obj = new _A();
	obj.publicPrint();
	print(obj._name);

	// B obj2 = new B(); // throws error for private constructor.
}


class _A {

	String _name = 'Harsh';

	void _privatePrint() {
		print(_name);
	}

	void publicPrint() {
		print(_name);
	}

}

class B {

	B._() {
		print('private constructor');
	}

}