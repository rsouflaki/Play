/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package blackjack;
import java.util.Random;
/**
 *
 * @author Dillinger
 */
public class Dealer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int playerCard1 = 0, playerCard2 = 0, playerCard3 = 0, playerCard4 = 0, playerCard5 = 0;
        int dealerCard1, dealerCard2, dealerCard3, dealerCard4, dealerCard5;
        int playerTotal = 0;
        int dealerTotal = 0;

        System.out.println("The cards are being dealt");
        Random randomGenerator = new Random();
        playerCard1 = randomGenerator.nextInt(11) + 1;
        playerCard2 = randomGenerator.nextInt(11) + 1;
        dealerCard1 = randomGenerator.nextInt(11) + 1;
        dealerCard2 = randomGenerator.nextInt(11) + 1;
        System.out.println("The player cards are: " + playerCard1 + " " + playerCard2);
        System.out.println("The dealer cards are: " + dealerCard1 + " " + dealerCard2);
        playerTotal = playerCard1 + playerCard2;
        dealerTotal = dealerCard1 + dealerCard2;
        System.out.println("The player total is: " + playerTotal);
        System.out.println("The dealer total is: " + dealerTotal);
        while (playerTotal <= 21){
            if(playerTotal <=16){
            playerCard3 = randomGenerator.nextInt(11) + 1;
            playerTotal+=playerCard3;
            System.out.println("The player draws " + playerCard3 + " and the new player total is " + playerTotal);
            }
            if(playerTotal <=16){
                playerCard4 = randomGenerator.nextInt(11) + 1;
                playerTotal+=playerCard4;
                System.out.println("The player draws " + playerCard4 + " and the new player total is " + playerTotal);
            }
            if(playerTotal <=16){
                playerCard5 = randomGenerator.nextInt(11) + 1;
                playerTotal+=playerCard5;
                System.out.println("The player draws " + playerCard5 + " and the new player total is " + playerTotal);
                
            }
            else break;
        }
        
         if(playerTotal > 21){
             System.out.println("The player total is " + playerTotal + " so the player loses");
            }
         if (playerTotal == 21){
             System.out.println("The player has 21 and wins!");
         }

            while (dealerTotal <= 21 && playerTotal < 21 ){

                if((playerTotal >= dealerTotal) || (dealerTotal <= 16)){
                    dealerCard3 = randomGenerator.nextInt(11) + 1;
                    dealerTotal+=dealerCard3;
                    System.out.println("The dealer draws " +dealerCard3 + " and the new dealer total is " + dealerTotal);

                }
                if((playerTotal >= dealerTotal) || (dealerTotal <= 16)){
                    dealerCard4 = randomGenerator.nextInt(11) + 1;
                    dealerTotal+=dealerCard4;
                    System.out.println("The dealer draws " +dealerCard4 + " and the new dealer total is " + dealerTotal);

                }
                else break;
            }
            
            if ((dealerTotal <21) && (playerTotal < 21) && (dealerTotal>playerTotal))
                System.out.println("The dealer wins");
            if ((dealerTotal <21) && (playerTotal < 21) && (dealerTotal<playerTotal))
                System.out.println("The player wins");
            if (dealerTotal > 21){
                System.out.println("The dealer total is " + dealerTotal + " so the dealer loses");
            }
            if (dealerTotal == 21){
             System.out.println("The dealer has 21 and wins!");
         }
        
        
       
        
    }

}
