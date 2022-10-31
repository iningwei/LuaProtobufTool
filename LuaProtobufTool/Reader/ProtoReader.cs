using LuaProtobufTool.Entity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LuaProtobufTool.Reader
{
    public class ProtoReader
    {
        public static List<ProtoEntity> Read(string path)
        {
            List<ProtoEntity> result = new List<ProtoEntity>();


            string[] lines = File.ReadAllLines(path);
            int count = lines.Length;
            if (count > 0)
            {
                int anotationIndex = -1;//没有就是-1
                int entityStartIndex;
                int entityEndIndex;
                bool isEnum = false;
                string entityName = "";
                for (int i = 0; i < count; i++)
                {
                    var line = lines[i];
                    line = line.Trim();
                    anotationIndex = -1;
                    isEnum = false;

                    //规避外部嵌套类命名为enums的情况
                    if (line != "" && (line.StartsWith("message") || (line.StartsWith("enum") && line.StartsWith("enums") == false)))
                    {
                        if (line.StartsWith("enum"))
                        {
                            isEnum = true;
                            Console.WriteLine("----------> enum:::" + line);

                        }


                        //取entityName
                        var seps = line.Split(' ');
                        for (int k = 1; k < seps.Length; k++)
                        {
                            if (seps[k].Trim() != "")
                            {
                                entityName = seps[k].Trim();
                                if (entityName.EndsWith("{"))
                                {
                                    entityName = entityName.Trim('{');
                                }
                                break;
                            }
                        }



                        entityStartIndex = i;
                        //向上找到注释
                        for (int j = entityStartIndex - 1; j >= 0; j--)
                        {
                            var anotationLine = lines[j];
                            if (anotationLine.StartsWith("//"))
                            {
                                anotationIndex = j;
                                break;
                            }
                            else
                            {
                                break;
                            }
                        }

                        //向下找到结束点
                        entityEndIndex = count - 1;
                        for (int k = entityStartIndex + 1; k < count; k++)
                        {
                            var endLine = lines[k];
                            if (endLine.StartsWith("//") ||
                                endLine.StartsWith("message") ||
                                endLine.StartsWith("enum"))
                            {
                                entityEndIndex = k - 1;
                                break;
                            }
                        }

                        //添加entity
                        ProtoEntity entity = new ProtoEntity();
                        entity.isEnum = isEnum;
                        entity.entityName = entityName;
                        for (int p = (anotationIndex != -1 ? anotationIndex : entityStartIndex); p <= entityEndIndex; p++)
                        {
                            var content = lines[p];
                            //去除content中的嵌套类结构
                            int index = content.IndexOf(".");
                            if (index != -1)
                            {
                                content = content.Substring(index + 1);
                            }
                            entity.AddLine(content);
                        }

                        result.Add(entity);
                    }
                }


            }


            Console.WriteLine(path + "'s entity count:" + result.Count);
            return result;
        }
    }
}
