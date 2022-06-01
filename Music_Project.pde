Table table;
PImage mybackground;
Song track;
ArrayList<Song> track1999 =  new ArrayList<Song>();
ArrayList<Song> track2000 =  new ArrayList<Song>();
ArrayList<Song> track2017 =  new ArrayList<Song>();
int radius;
int radius2;
int radius3;

//the screen and attributes
void setup(){
    //fullScreen();
    size(2000,2000);
    background(152,190,100);
    textSize(100);
    text("Popularity in pop over Time",350,200);
    table = loadTable("https://raw.githubusercontent.com/dlevyapcsa/APCSA/main/songs_normalize.csv", "header");
    for(TableRow row: table.rows()){
      String artist = row.getString("artist");
      String song = row.getString("song");
      int year = row.getInt("year");
      String genre = row.getString("genre");
      Song current = new Song(artist, song, year,genre);
      System.out.print(artist + " " + song + " " + year + " " + genre + " ");
      
      //adding the tracks for the years
      if (year==1999 && genre.equals("pop")){
          track1999.add(current);
      }
      
      if (year==2000 && genre.equals("pop")){
        track2000.add(current);
      }
      if(year==2017 && genre.equals("pop")){
        track2017.add(current);
      }
        radius = track1999.size()*10;
        radius2 = track2000.size()*10;
        radius3 = track2017.size()*10;

    }
    

    
}

//draw method for the circles

public void draw(){
  //pop1999
  text("1999",350,750);
  fill(204,102,0);
  circle(400,500,radius);
  
  //pop2000
  text("2000",900,750);
  fill(0,125,170);
  circle(900,500,radius2);
  
  //pop2017
  text("2017",1400,750);
  fill(30,140,100);
  circle(1400,500,radius3);
}

// mouse pressed method 
void mouseMoved(){
  if (dist(mouseX, mouseY, 500,500)<=radius){
    fill(255,255,255);
    text(radius,350,350);
  }
  
  if (dist(mouseX, mouseY, 900,750) <= radius2){
    fill(255,255,255);
    text(radius2,900,350);
  }
  if (dist(mouseX, mouseY, 1400,750)<=radius3){
    fill(255,255,255);
    text(radius3,1400,300);
  }

}


//song class to call the traits of each song
public class Song{
  private String artist;
  private String song;
  private int year;
  private String genre;
  Song( String artist, String song, int year, String genre){
    this.artist=artist;
    this.song=song;
    this.year=year;
    this.genre=genre;
  }
 
 
  }
// end of song class
