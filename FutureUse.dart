void main(){
  getUsernameExp();
}

// Different ways of using Future function:

// Method 1: using async-await
Future<void> getUsername() async{
  String username = await fetchUsername();
  print(username);
}

// Method 2: using then()
void getUsername2(){
  fetchUsername().then((value) => {
    print(value)
  }).catchError((onError) => {
    print(onError)
  });
}

Future<String> fetchUsername() async {
  print('fetching username ...');
  return Future.delayed(Duration(seconds: 2), () {
    return Future.error('Not found');
  });
}

/* Difference between then and await:

  then()  : It doesn't interrupt the process flow and enables us to run the code when async method is finished.

  await   : It interrupt the process flow until async method has finished by return the result/error.

*/


/*
  While using async/await, error can be catched using the try-catch block.
  When the Exception is thrown from the future function it will be caught by catch block.

  Example:
*/


Future<void> getUsernameExp() async {

  try{
    String username = await fetchUsername();
    print(username);    
  }catch(e){
    print(e.toString());
  }

}

/*

  Some cases of using Future is:

  1. Fetching data from database using API.
  2. Reading data from local storage.
  3. Long running task in UI program (like calculating some trick math formula).

*/