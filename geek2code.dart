void sol(int n) {
  int met = ((n-1)*2)~/2;
  List<String> ans = List<String>();
  ans.add((' '*met + '#' + ' '*met));
  //print(' '*met + '#' + ' '*met);
  for (int i = 1, space = 1; i < n; i += 1, space += 2) {

    ans.insert(i, ' '*(met-i) + '#' + ' '*(space) + '#');
    if (i + 1 != n) {
      ans.insert(i+1, ' '*(met-i) + '#' + ' '*(space) + '#');
    }
  }
  if (n != 1) ans.add((' '*met + '#' + ' '*met));

  ans.forEach((element) {
    print(element);
  });
}