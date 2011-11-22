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

        System.out.println("The cards are being dealt");
        Random randomGenerator = new Random();
        playerCard1 = randomGenerator.nextInt(11) + 1;
        playerCard2 = randomGenerator.nextInt(11) + 1;
        dealerCard1 = randomGenerator.nextInt(11) + 1;
        dealerCard2 = randomGenerator.nextInt(11) + 1;
        System.out.println("The player cards are: " + playerCard1 + " " + playerCard2);
        System.out.println("The dealer cards are: " + dealerCard1 + " " + dealerCard2);
        System.out.println("The player total is: " + playerTotal);
        if(playerCard1 + playerCard2 <=16){
            

        }
    }

}
