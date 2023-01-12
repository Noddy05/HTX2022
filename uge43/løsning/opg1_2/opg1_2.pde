String s = "Hej med dig!";
int i =0;
//while løkke
while (i < s.length())
{
  if (i == 5)
  println(s.charAt(i));
  i++;
}
// for løkke
for (i=0; i<s.length(); i++){ //<>//
  if (i ==5)
  println(s.charAt(i));
}

// while løkke og to betingelser
i=0;
while (i<30)
{
  if ((i >=10)&&(i <= 20)) //<>//
  print(i," ");
  i++;
}
println("");
// for løkke og to betingelser
for (i=0;i<30;i++){
  if ((i >=10)&&(i <= 20))
  print(i," ");

}
