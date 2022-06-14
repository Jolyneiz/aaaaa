using System;
using System.Linq;
					
public class Program
{
	public static void Main()
	{
		
	    Console.Write("Введите логин:" + "\n");
		Console.ReadLine();
		Console.WriteLine("цифарки");
		
    var a = Enumerable.Range(2,10).Select(i=> new Random().Next(1,10));
    Console.WriteLine(String.Join("",a));
		
			Console.WriteLine("букавки");
        char[] array = new char[10];
        Random rnd = new Random();
        for (int i = 0; i < array.Length; i++)
        {
            array[i] = Convert.ToChar(rnd.Next('a', 'a' + 27));
            Console.Write("{0}", array[i]);
        }
		
			Console.WriteLine("\n"+"и цифарки и букавки");
		
			Random res = new Random();
    String str = "abcdefghijklmnopqrstuvwxyz0123456789";
    int size = 8;
    String randomstring = "";
  
    for (int i = 0; i < size; i++)
    {
        int x = res.Next(str.Length);
        randomstring = randomstring + str[x];
    }
    Console.WriteLine(randomstring);
}
}
