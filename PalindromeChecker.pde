public void setup()
{
  System.out.println(noSpaces("nurses run"));
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
  String sWords = onlyLetters(sWord);
  String sNewer = noCapitals(sWords);
  String sNewest = noSpaces(sNewer);
    if (sNewest.equals(reverse(sNewest)))
     return true;
  else
     return false;
}
public String reverse(String sWord){
  String sNew = new String();
  for (int i = sWord.length()-1; i >= 0; i--)
     sNew = sNew + sWord.substring(i, i+1);
  return sNew; 
}
public String noSpaces(String sWord){
  String sWord2 = new String();
  for(int i = 0; i < sWord.length(); i++)
     if (!sWord.substring(i, i+1).equals (" "))
        sWord2 = sWord2 + sWord.substring(i, i+1);
     return sWord2;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String onlyLetters(String sWord){
  String sWord3 = new String();
  for(int i = 0; i < sWord.length(); i++)
    if(Character.isLetter(sWord.charAt(i)) == true)
      sWord3 = sWord3 + sWord.charAt(i);
    return sWord3;
  
}
