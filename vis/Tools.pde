import java.awt.Toolkit;
import java.awt.datatransfer.*;


// ********************************************************* TOOLS FOR TEXT AND PICTURES
boolean snapPic=false;
int pictureCounter=0;
String PicturesOutputPath=".";
void selectFolderForPDFs(File selection) {
  if (selection == null) println("Window was closed or the user hit cancel.");
  else PicturesOutputPath=selection.getAbsolutePath();
  println("    path to PDF image folder = "+PicturesOutputPath);
  }

void scribeHeader(String S, int i) {fill(0); text(S,10,20+i*20); noFill();} // writes black at line i
void scribeHeaderRight(String S) {fill(0); text(S,width-6.5*S.length(),20); noFill();} // writes black on screen top, right-aligned
void scribeFooter(String S, int i) {fill(0); text(S,10,height-10-i*20); noFill();} // writes black on screen at line i from bottom