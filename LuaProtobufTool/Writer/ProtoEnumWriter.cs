using LuaProtobufTool.Entity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LuaProtobufTool.Writer
{
    internal class ProtoEnumWriter
    {
        public static void Write(List<ProtoEntity> protoEntities, string outputPath)
        {
            int lineCount = 0;
            for (int i = 0; i < protoEntities.Count; i++)
            {
                var entity = protoEntities[i];
                if (entity.isEnum)
                {
                    lineCount += entity.allLines.Count;
                }
            }


            lineCount += 2;//前面
            lineCount += 2;//后面

            string[] alllines = new string[lineCount];
            alllines[0] = "---@class ProtoEnum";
            alllines[1] = "local ProtoEnum={";

            int index = 2;
            for (int i = 0; i < protoEntities.Count; i++)
            {
                var entity = protoEntities[i];
                if (entity.isEnum)
                {
                    for (int j = 0; j < entity.allLines.Count; j++)
                    {
                        var line = entity.allLines[j];
                        if (line.StartsWith("enum"))
                        {
                            line = line.Remove(0, 4);
                        }
                        line = line.Replace("//", "--");
                        if (j == entity.allLines.Count - 1)
                        {
                            line += ",";
                        }
                        alllines[index] = line;
                        index++;
                    }
                }
            }

            alllines[lineCount - 2] = "}";
            alllines[lineCount - 1] = "return ProtoEnum";

            File.WriteAllLines(outputPath, alllines);
            Console.WriteLine("write ProtoEnum lua success:" + outputPath);
        }
    }
}
