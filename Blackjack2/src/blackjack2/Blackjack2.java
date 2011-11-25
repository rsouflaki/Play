/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack2;
import java.util.Random;
/**
 *
 * @author Admin
 */

public class Blackjack2 {

    /**
     * @param args the command line arguments
     */
    int playerCard;
    int dealerCard;
    int playerTotal = 0;
    int dealerTotal = 0;
    
    Random randomGenerator = new Random();
    
    void drawPlayerCard(){
        playerCard = cardArray[randomGenerator.nextInt(11) + 1];
        playerTotal += playerCard;
        System.out.println("The player draws " +playerCard+ "and the new total is " +playerTotal);
    }
    
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        int[] cardArray;
        cardArray = new int [11];
        
        for(int i = 0; i < 11; i++){
            cardArray[i] = i+1;
            
        }
    }
}
