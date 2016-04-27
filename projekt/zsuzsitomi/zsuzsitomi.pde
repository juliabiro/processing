File dir = new File(dataPath(""));
String[] filenames = dir.list();
for (int i = 0; i < filenames.length; i++) {
  println(filenames[i]);
}