using System;

/*
 * http://helloworldcollection.de/#C%E2%99%AF
 *  dotnet publish -r win-x64 -c Release /p:PublishSingleFile=true /p:IncludeNativeLibrariesForSelfExtract=true --self-contained true
 .NET 5
 */

namespace HelloWorldCs
{
    //Hello World in C#
    class HelloWorld
    {
        static void Main()
        {
            System.Console.WriteLine("Hello, World!");
        }
    }
}
