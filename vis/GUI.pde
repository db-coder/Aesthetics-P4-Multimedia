void keyPressed() 
{
  if(key == 'z')
  {
    start = true;
    demo = false;
    chords = false;
    if(twinkle_song.isPlaying())
        twinkle_song.pause();
    if(bobCat_song.isPlaying())
        bobCat_song.pause();
    if(chopin_song.isPlaying())
      chopin_song.pause();
  }
  if(demo)
  {
    if(key == '1')
    {
      if(bobCat_song.isPlaying())
        bobCat_song.pause();
      if(chopin_song.isPlaying())
        chopin_song.pause();
      song = 1;
      twinkle_song.rewind();
      twinkle_song.play();
      pulses.add(new Pulse(1));
      lastTimeCheck = millis();
      count = 1;
      TIMER = 1100;
    }
    else if(key == '2')
    {
      if(chopin_song.isPlaying())
        chopin_song.pause();
      if(twinkle_song.isPlaying())
        twinkle_song.pause();
      song = 2;
      bobCat_song.rewind();
      bobCat_song.play();
      pulses.add(new Pulse(2));
      lastTimeCheck = millis();
      count = 1;
      TIMER = 500;
    }
    else if(key == '3')
    {
      if(bobCat_song.isPlaying())
        bobCat_song.pause();
      if(twinkle_song.isPlaying())
        twinkle_song.pause();
      song = 3;
      chopin_song.rewind();
      chopin_song.play();
      pulses.add(new Pulse(2));
      lastTimeCheck = millis();
      count = 1;
      TIMER = 250;
    }
  }
  if(chords)
  {
    if (key=='.')
    { 
      chord_text = "Major chord";
      pulses.add(new Pulse(1));
      C.play();
      E.play();
      G.play();
      
      C.rewind();
      E.rewind();
      G.rewind();
    }
    if(key==',')
    {
      chord_text = "Minor chord";
      pulses.add(new Pulse(2));
      C.play();
      E_flat.play();
      G.play();
      
      C.rewind();
      E_flat.rewind();
      G.rewind(); 
    }
    if (key=='/')
    {
      chord_text = "Major seventh";
      pulses.add( new Pulse(3) );
      C.play();
      E.play();
      G.play();
      B.play();
      
      C.rewind();
      E.rewind();
      G.rewind();
      B.rewind();
    }
    if (key=='q')
    {
      chord_text = "Minor seventh";
      pulses.add(new Pulse(4));
      C.play();
      E_flat.play();
      G.play();
      B_flat.play();
      
      C.rewind();
      E_flat.rewind();
      G.rewind();
      B_flat.rewind();
    }
    if (key=='w')
    {
      chord_text = "Dominant seventh";
      pulses.add(new Pulse(5));
      C.play();
      E.play();
      G.play();
      B_flat.play();
      
      C.rewind();
      E.rewind();
      G.rewind();
      B_flat.rewind();
    }
    if (key=='e')
    {
      chord_text = "Major sixth";
      pulses.add(new Pulse(6));
      C.play();
      E.play();
      G.play();
      A.play();
      
      C.rewind();
      E.rewind();
      G.rewind();
      A.rewind();
    }
    if (key=='r')
    {
      chord_text = "Suspended fourth";
      pulses.add(new Pulse(7));
      C.play();
      F.play();
      G.play();
      
      C.rewind();
      F.rewind();
      G.rewind();
    }
    if (key=='t')
    {
      chord_text = "Ninth";
      pulses.add(new Pulse(8));
      C.play();
      E.play();
      G.play();
      D.play();
      
      C.rewind();
      E.rewind();
      G.rewind();
      D.rewind();
    }
    if (key=='d')
    {
      chord_text = "Diminished";
      pulses.add(new Pulse(9));
      C.play();
      E_flat.play();
      G_flat.play();
      
      C.rewind();
      E_flat.rewind();
      G_flat.rewind();
    }
    if (key=='a')
    {
      chord_text = "Augmented";
      pulses.add(new Pulse(10));
      C.play();
      E.play();
      A_flat.play();
      
      C.rewind();
      E.rewind();
      A_flat.rewind();
    }
    if (key=='s') 
    {
      chord_text = "Minor sixth";
      pulses.add(new Pulse(11));
      C.play();
      E.play();
      G.play();
      A.play();
      
      C.rewind();
      E.rewind();
      G.rewind();
      A.rewind();
    }
  }
}

void mousePressed() 
{
  if (button1Over)
  {
    start = false;
    demo = true;
    chords = false;
    if(twinkle_song.isPlaying())
        twinkle_song.pause();
    if(bobCat_song.isPlaying())
        bobCat_song.pause();
    if(chopin_song.isPlaying())
      chopin_song.pause();
  }
  if (button2Over)
  {
    start = false;
    demo = false;
    chords= true;
    if(twinkle_song.isPlaying())
        twinkle_song.pause();
    if(bobCat_song.isPlaying())
        bobCat_song.pause();
    if(chopin_song.isPlaying())
      chopin_song.pause();
  }
}