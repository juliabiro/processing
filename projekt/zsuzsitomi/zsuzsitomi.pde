File dir = new File(dataPath(""));
String[] filenames = dir.list();
for (String filename : filenames) {
  println(filename);
}