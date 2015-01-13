using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace CleanUp
{
    public class StreamUtils
    {
        public static List<String> readFromFile(String fileName)
        {
            List<String> list = new List<string>();
            using (StreamReader sr = new StreamReader(fileName))
            {
                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine();
                    list.Add(line);
                }
            }
            return list;
        }

        public static void writeToFile(String fileName, String text)
        {
            File.Create(fileName).Close();
            using (StreamWriter sw = new StreamWriter(fileName))
            {
                foreach (string data in text.Split(new Char[] { ' ' }).ToList())
                {
                    sw.WriteLine(data);
                }
            }
        }
    }
}
