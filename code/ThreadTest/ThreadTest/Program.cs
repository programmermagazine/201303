using System;
using System.Threading;

class SimpleThread
{
    String name;

    public static void Main(String[] args)
    {
        SimpleThread a = new SimpleThread("A");
        SimpleThread b = new SimpleThread("B");
        Thread athread = new Thread(new ThreadStart(a.run));
        Thread bthread = new Thread(new ThreadStart(b.run));
        athread.Start();
        bthread.Start();
        athread.Join();
        bthread.Join();
    }

    SimpleThread(String pName)
    {
        name = pName;
    }

    public void run()
    {
        for (int i = 0; i < 10; i++)
        {
            String line = name + ":" + i;
            Console.WriteLine(line);
            // Thread.Sleep(10);
        }
    }
}