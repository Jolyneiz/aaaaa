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








using System;
using System.Linq;
					
public class Program
{
	public static void Main()
	{
		Console.WriteLine("выберите какой пароль вы хотите...");
    int cifra = Parse.Int32(Console.ReadLine());
    int bucva = Parse.Int32(Console.ReadLine());
    int vse = Parse.Int32(Console.ReadLine())0;
    
    int cifra = Console.WriteLine(String.Join("",a));
    int bucva =  Console.Write("{0}", array[i]);
    int vse = Console.WriteLine(randomstring);
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



using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace ffaf

{
public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            //чтобы 100 раз не читать картинки с файлов, читаем 1 раз в кострукторе
            this.Text = "Рисунок";
            fon = Image.FromFile(@"C:\Users\f\fon.JPG");
            a = Image.FromFile(@"C:\Users\f\a.PNG");

        }
        Image fon;
        Image a;
        Point position = new Point(100, 1000); //позиция рисунка, которую будем изменять по таймеру
     

        private void timer1_Tick(object sender, EventArgs e) // когда сбатывает таймер изменяем положение рисунка и перерисовываем форму
        {
           position.Offset(5, 5); //тут устанавливаете новое положение рисунка
                                              // я тут просто передвинул на 5 вправо и вниз, можно изменять по другому, в зависимомти от задачи
            this.Invalidate(); // заставляем форму перерисовать себя
        }

        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            e.Graphics.DrawImage(fon, 10, 10); //рисуем фон
            e.Graphics.DrawImage(a, position); //рисуем рисунок там, где он должен быть
        }
    }
}


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ffaf
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
    
        bool LeftMove;
        bool UpMove;
        private  void  
    timer1_Tick(object sender, EventArgs e)
        {
            if (LeftMove == true)
            {
                p.Left += 10;
            }
            if (LeftMove == false)
            {
                p.Left -= 10;
            }
            if (UpMove == true)
            {
                p.Top += 10;
            }
            if (UpMove == false)
            {
                p.Top -= 10;
            }
            if (p.Left <= ClientRectangle.Left)
            {
                LeftMove = true;
            }
            if (p.Right >= ClientRectangle.Right)
            {
                LeftMove = false;
            }
            if (p.Top <= ClientRectangle.Top)
            {
                UpMove = true;
            }
            if (p.Bottom >= ClientRectangle.Bottom)
            {
                UpMove = false;
            }
        }
    }
}



Public Class Form1
    Dim LeftMove, UpMove As Boolean

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If LeftMove = True Then
            p.Left += 10
        End If
        If LeftMove = False Then
            p.Left -= 10
        End If
        If UpMove = True Then
            p.Top += 10
        End If
        If UpMove = False Then
            p.Top -= 10
        End If
        If p.Left <= ClientRectangle.Left Then
            LeftMove = True
        End If
        If p.Right >= ClientRectangle.Right Then
            LeftMove = False
        End If
        If p.Top <= ClientRectangle.Top Then
            UpMove = True
        End If
        If p.Bottom >= ClientRectangle.Bottom Then
            UpMove = False
        End If
    End Sub
End Class
