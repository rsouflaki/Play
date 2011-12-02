package blackjack2;
import java.util.Random;


public class drawCard{
    
    
        
    public int playerCard1;
    public int playerCard2;
    public int dealerCard1;
    public int dealerCard2;
    public int playerCard;
    public int dealerCard;
    public int playerTotal = 0;
    public int dealerTotal = 0;
    
    public void draw(){ 
        
        Random randomGenerator = new Random();

        int[] cardArray;
        cardArray = new int [11];
        
        for(int i = 0; i < 11; i++){
            cardArray[i] = i+1;
        }
        
        playerCard1 = cardArray[randomGenerator.nextInt(11)];
        playerCard2 = cardArray[randomGenerator.nextInt(11)];
        dealerCard1 = cardArray[randomGenerator.nextInt(11)];
        dealerCard2 = cardArray[randomGenerator.nextInt(11)];
        System.out.println("The player cards are: " + playerCard1 + ", " + playerCard2);
        System.out.println("The dealer cards are: " + dealerCard1 + ", " + dealerCard2);
        playerTotal = playerCard1 + playerCard2;
        dealerTotal = dealerCard1 + dealerCard2;
        System.out.println("The player total is: " + playerTotal);
        System.out.println("The dealer total is: " + dealerTotal);
        
        while (playerTotal <= 16 && dealerTotal < 21){
            playerCard = cardArray[randomGenerator.nextInt(11)];
            playerTotal += playerCard;
            System.out.println("The player draws " +playerCard+ " and the new total is " +playerTotal);   
        }
        
         if(playerTotal > 21)
             System.out.println("The player total is " + playerTotal + " so the player loses.");
  
         if (playerTotal == 21)
             System.out.println("The player has 21 and wins!");
        
         if (dealerTotal == 21)
             System.out.append("The dealer has 21 and wins");
         
         
        while ((dealerTotal <= 16 || dealerTotal < playerTotal) && playerTotal < 21){
            dealerCard = cardArray[randomGenerator.nextInt(11)];
            dealerTotal += dealerCard;
            System.out.println("The dealer draws " +dealerCard+ " and the new total is " +dealerTotal);  
        }
        
        
        if ((dealerTotal <21) && (playerTotal < 21) && (dealerTotal>playerTotal))
            System.out.println("The dealer wins.");
        if ((dealerTotal <21) && (playerTotal < 21) && (dealerTotal<playerTotal))
            System.out.println("The player wins.");
        
        if(dealerTotal > 21)
            System.out.println("The dealer total is " + dealerTotal + " so the dealer loses.");
        
        if(dealerTotal == 21)
            System.out.append("The dealer has 21 and wins.");
        if (dealerTotal == playerTotal)
            System.out.println("Draw.");
        
    }

}