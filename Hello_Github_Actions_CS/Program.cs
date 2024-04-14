class Program
{
    static void Main(string[] args)
    {
        #if DEBUG
            Console.WriteLine("Hello Github Actions! From debug build.1");
        #endif
        #if RELEASE
            Console.WriteLine("Hello Github Actions! From release build.");
        #endif
    }
}