String[][] racs = new String[5][6];
String sorbetuk = "abcde";
for (int sor = 0; sor < 5; sor++) {
  for (int oszlop = 0; oszlop < 6; oszlop++) {
    racs[sor][oszlop] = sorbetuk.charAt(sor) + Integer.toString(oszlop + 1) + ".jpg";
    println(racs[sor][oszlop]);
  }
}