
import 'package:test/test.dart';

import 'main.dart';

main(){
  test('lengthen', (){
    expect(lengthen("abcdefg", "ab"), "abababa");
  });

  test('find broken keys', (){
    expect(findBrokenKeys("happy birthday", "hawwy birthday"), ['p']);
  });
}