class Lasagna
{
    public int ExpectedMinutesInOven()
    {
        return 40;
    }

    public int RemainingMinutesInOven(int actualTimeInOven)
    {
        return ExpectedMinutesInOven() - actualTimeInOven;        
    }

    public int PreparationTimeInMinutes(int numberOfLayers)
    {
        return numberOfLayers * 2;
    }

    public int ElapsedTimeInMinutes(int numberOfLayers, int actualTimeInOven)
    {
        return PreparationTimeInMinutes(numberOfLayers) + actualTimeInOven;
    }
}