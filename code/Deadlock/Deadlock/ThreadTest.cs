using System;
using System.Threading;
using System.Text;

class ThreadTest
{
    static StringBuilder A = new StringBuilder("A");
    static StringBuilder B = new StringBuilder("B");

    public static void Main(String[] args)
    {
        Thread thread1 = new Thread(new ThreadStart(AB));
        Thread thread2 = new Thread(new ThreadStart(BA));
        thread1.Start();
        thread2.Start();
        thread1.Join();
        thread2.Join();
    }

    public static void AB()
    {
        lock (A)
        {
            Console.WriteLine("AB.lock(A)");
            Thread.Sleep(1000);
            lock (B)
            {
                Console.WriteLine("AB.lock(B)");
            }
        }
    }

    public static void BA()
    {
        lock (B)
        {
            Console.WriteLine("BA.lock(B)");
            Thread.Sleep(1000);
            lock (A)
            {
                Console.WriteLine("BA.lock(A)");
            }
        }
    }
}
