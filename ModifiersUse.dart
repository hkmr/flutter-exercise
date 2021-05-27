void main() {
	
	// final: It will mark the identifier as constant and once initialized it can't be changed

	final String val1 = "value1";

	// val1 = "some";  // throws error


	// static: It is used for class-level and make the identifier and methods to get available to other without creating object of that class.
	print(val1);
	print(A.val2);


	// Data type provides the identifier to specify the type of data that the variable can hold. It is also used with methods to specify the return type of the method.

	// var: It helps to declare the variable without specifying its type. The type is determined at compile time using type infer.

	var val = 4;
	print(val);

}

class A {
	static String val2 = 'value 2';
}

// Final parameters can be used in class as follows:

class B {
	final int num = 10; // declaration and initialization
	final int val;		// declaration only

	B(this.val); 		// initailization inside constructor
} 