using LuaProtobufTool.Entity;
using LuaProtobufTool.Reader;
using LuaProtobufTool.Writer;
using System;
using System.Collections.Generic;
using System.IO;

namespace LuaProtobufTool
{


    class Program
    {
        static string protoFileDic;
        static string protoOutputDic;
        static string[] protoFilePaths;

        static List<ProtoEntity> protoEntities = new List<ProtoEntity>();
        static void Main(string[] args)
        {
            Console.WriteLine("begin handle proto files---->");

            string curDir = Environment.CurrentDirectory;
            protoFileDic = curDir.Substring(0, curDir.LastIndexOf(@"\"));
            protoOutputDic = protoFileDic + @"\ProtoOutput";

            protoFileDic = protoFileDic + @"\ProtoFiles";
            protoFilePaths = Directory.GetFiles(protoFileDic, "*.proto", SearchOption.TopDirectoryOnly);



            List<ProtoEntity> allEntityList = new List<ProtoEntity>();
            for (int i = 0; i < protoFilePaths.Length; i++)
            {
                var path = protoFilePaths[i];
                var fileEntities = ProtoReader.Read(path);

                if (fileEntities.Count > 0)
                {
                    allEntityList.AddRange(fileEntities);
                }
            }


            //导出Proto.lua文件      
            string outputPath = protoOutputDic + @"\XXXProto.lua";
            BasicProtoWriter.Write(allEntityList, outputPath);


            //导出ProtoEnum.lua文件
            string outputProtoEnumPath = protoOutputDic + @"\ProtoEnum.lua";
            ProtoEnumWriter.Write(allEntityList, outputProtoEnumPath);

            //导出Emmy lua需要的hint文件
            string outputHintPath = protoOutputDic + @"\hint_proto.lua";
            EmmyHintWriter.Write(allEntityList, outputHintPath);


            Console.ReadLine();
        }
    }
}