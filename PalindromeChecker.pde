public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String b = onlyLetters(noCapitals(noSpaces(word)));
  if(reverse(word).equals(b)){
    return true;
  } else {
    return false;
  }
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length() - 1; i >= 0; i--){
    sNew += str.charAt(i);
  }
  String aNew = onlyLetters(noCapitals(noSpaces(sNew)));
  return aNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String a = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) != ' '){
      a += sWord.charAt(i);
    }
  }
  return a;
}

public int numLetters(String sString){
  int num = 0;
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      num += 1;
    }
  }
  return num;
}

public String onlyLetters(String sString){
  String a = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      a += sString.charAt(i);
    }
  }
  return a;
}

