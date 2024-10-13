//containts duplicate
class Solution {
  bool containsDuplicate(List<int> nums) {
    Set set = Set();
    for (int i = 0; i < nums.length; i++) {
      set.add(nums[i]);
    }
    if (set.length == nums.length) {
      return true;
    } else {
      return false;
    }
  }
}

//is Anagram duplicate
class Solution1 {
  bool isAnagram(String s, String t) {
    List l1 = s.split('');
    List l2 = t.split('');
    l1.sort();
    l2.sort();
    print("Lists $l1 $l2");
    int i = 0;
    if (l1.length != l2.length) {
      return false;
    }
    while (i < l1.length && l1[i] == l2[i]) {
      i++;
    }
    if (i < l1.length) {
      return false;
    }
    return true;
  }
}

//groupe of anagrams
class Solution2 {
  List<List<String>> groupAnagrams(List<String> strs) {
    List<List<String>> result = [];
    while (strs.isNotEmpty) {
      for (int i = 0; i < strs.length; i++) {
        String aux = strs[i];
        List<String> anagrams = [];
        anagrams.add(aux);
        strs.removeAt(i);
        for (int j = 0; j < strs.length; j++) {
            if(strs[j]==aux){
                anagrams.add(strs[j]);
            }else
          if (isAnagram(strs[j], aux)) {
            anagrams.add(strs[j]);
            strs.removeAt(j);
          }

        }
        result.add(anagrams);
      }
    }
    return result;
  }
   bool isAnagram(String s, String t) {
    List l1 = s.split('');
    List l2 = t.split('');
    l1.sort();
    l2.sort();
    int i = 0;
    if (l1.length != l2.length) {
      return false;
    }
    while (i < l1.length && l1[i] == l2[i]) {
      i++;
    }
    if (i < l1.length) {
      return false;
    }
    return true;
  }
}