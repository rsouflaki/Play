package ergasia_pithanothewria_1;
import java.util.Random;

public class Main {

    public static void main(String[] args) {
        int numberOfGames = 7;
        int gamesForChampionship = 4;
        int diceSides = 6;
        int diceSide;
        int bonusPoints = 5;
        int winsForA = 0;
        int winsForB = 0;
        Random randomGenerator = new Random();
        Random dice = new Random();

        for (int i = 0; i < numberOfGames; i++)
        {
            int pointsForA = 0;
            int pointsForB = 0; 

            while (pointsForA == pointsForB)
            {
                pointsForA = randomGenerator.nextInt(41) + 60;
                pointsForB = randomGenerator.nextInt(21) + 70;
                if (i == numberOfGames - 1)
                {
                    diceSide = dice.nextInt(diceSides) + 1;
                    if (diceSide <= diceSides / 2)
                    {
                        pointsForA += bonusPoints;
                        System.out.println("Το τελευταίο παιχνίδι θα διεξαχθεί στην έδρα της ομάδας A με bonus " +bonusPoints+ " πόντων.");
                    } else
                    {
                        pointsForB += bonusPoints;
                        System.out.println("Το τελευταίο παιχνίδι θα διεξαχθεί στην έδρα της ομάδας B με bonus " +bonusPoints+ " πόντων.");
                    }
                }
            }

            if (pointsForA > pointsForB)
            {
                winsForA++;
            } else
            {
                winsForB++;
            }

            System.out.println("Αποτέλεσμα " +(i+1)+ "ου παιχνιδιού: Ομάδα Α: " +pointsForA+ " Ομάδα Β: " +pointsForB);
            if (winsForA == gamesForChampionship)
            {
                System.out.println("Νίκες της ομάδας A: " +winsForA);
                System.out.println("Νίκες της ομάδας B: " +winsForB);
                System.out.println("Πρωταθλήτρια είναι η ομάδα Α.");
                break;
            } else if (winsForB == gamesForChampionship)
            {
                System.out.println("Νίκες της ομάδας A: " +winsForA);
                System.out.println("Νίκες της ομάδας B: " +winsForB);
                System.out.println("Πρωταθλήτρια είναι η ομάδα B.");
               break;
            }
            }
        
    }

}
