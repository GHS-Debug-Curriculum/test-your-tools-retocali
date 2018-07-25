import java.util.Random;

class RandomProgram
{
    public static void main(String... argv)
    {
        System.out.println("Hello world!");
        System.out.println("I'm going to generate a secret number!");
        Random rand = new Random(93); // 93 is my favorite number!
        int x = rand.nextInt();
        System.out.println("I have a secret number that you'll never know!");
    }
}
