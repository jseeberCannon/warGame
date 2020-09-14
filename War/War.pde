class Card {
  //Properties
  String val;
  int pts;
  boolean faceUp;
  String cardSuit;
  color cardColor;
  String suitIcon;

  //Input Parameters
  Card(String value, int points, boolean fUp, String suit, color col, String icon) {
    val = value;
    pts = points;
    faceUp = fUp;
    cardSuit = suit;
    cardColor = col;
    suitIcon = icon;
  }
}

//Object MainDeck (Need to add Split Deck)
Card[] mainDeck = {};


//Helper Array
String[] cardValues = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"};
String[] cardSuits = {"Clubs", "Diamonds", "Hearts", "Spades"};
color[] cardColors = {color(0), color(255, 0, 0), color(255, 0, 0), color(0)};
String[] cardIcons = {"♣", "♦", "♥", "♠"};

//Loops
for (int i = 1; i < 4; i++) { //SUIT Loop
  for (int k = 0; k < 13; k++) {
    Card tempCard = new Card(cardValues[k], k+2, false, cardSuits[i], cardColors[i], cardIcons[i]);
    //append(mainDeck, tempCard);
    mainDeck = (Card[]) append(mainDeck, tempCard);
  }
}

//Need top shuffle and split deck

for (int i = 0; i < mainDeck.length; i++){
  print(mainDeck[i].val + " of " + mainDeck[i].cardSuit + "\n");
}

//GameLoop
