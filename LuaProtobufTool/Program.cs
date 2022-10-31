using LuaProtobufTool.Entity;
using LuaProtobufTool.Reader;
using LuaProtobufTool.Writer;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

namespace LuaProtobufTool
{


    class Program
    {
        static string binDir;
        static string originProtoFileDic;



        static string[] protoFilePaths;


        static string outputProtoPath;
        static string outputProtoEnumPath;
        static string outputprotoMsgIDPath;
        static string outputHintPath;


        static List<ProtoEntity> protoEntities = new List<ProtoEntity>();
        static void Main(string[] args)
        {
            Console.WriteLine("begin handle proto files---->");
            for (int i = 0; i < args.Length; i++)
            {
                Console.WriteLine($"Main args[{i}]:{args[i]}");
            }

            init(args);


            //read all proto files
            protoFilePaths = Directory.GetFiles(originProtoFileDic, "*.proto", SearchOption.TopDirectoryOnly);
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
            BasicProtoWriter.Write(allEntityList, outputProtoPath + @"\Proto.lua");


            //导出ProtoEnum.lua文件 
            ProtoEnumWriter.Write(allEntityList, outputProtoPath + @"\ProtoEnum.lua");
            //导出ProtoMsgID.lua文件
            ProtoMsgIDWriter.Write(allEntityList, outputProtoPath + @"\ProtoMsgID.lua");

            //导出Emmy lua需要的hint文件 
            EmmyHintWriter.Write(allEntityList, outputHintPath + @"\proto.lua");


            Console.ReadLine();
        }


        static void init(string[] args)
        {
            string curDir = Environment.CurrentDirectory;
            binDir = curDir.Substring(0, curDir.LastIndexOf(@"\"));

            //not assign params
            if (args.Length == 0)
            {
                Console.WriteLine("curDir:" + curDir + ",binDir:" + binDir);
                originProtoFileDic = binDir + @"\ProtoFiles";
                outputProtoPath = binDir + @"\ProtoOutput";
                outputProtoEnumPath = binDir + @"\ProtoOutput";
                outputprotoMsgIDPath = binDir + @"\ProtoOutput";
                outputHintPath = binDir + @"\EmmyHint";

            }
            else
            {
                if (args.Length != 5)
                {
                    throw new Exception("error, args must be 5");
                }
                else
                {
                    originProtoFileDic = Path.Combine(binDir, args[0]);
                    outputProtoPath = Path.Combine(binDir, args[1]);
                    outputProtoEnumPath = Path.Combine(binDir, args[2]);
                    outputprotoMsgIDPath = Path.Combine(binDir, args[3]);
                    outputHintPath = Path.Combine(binDir, args[4]);
                }
            }


            if (!Directory.Exists(originProtoFileDic))
            {
                throw new Exception("no dic:" + originProtoFileDic);
            }
            if (!Directory.Exists(outputProtoPath))
            {
                Directory.CreateDirectory(outputProtoPath);
            }
            if (!Directory.Exists(outputProtoEnumPath))
            {
                Directory.CreateDirectory(outputProtoEnumPath);
            }
            if (!Directory.Exists(outputprotoMsgIDPath))
            {
                Directory.CreateDirectory(outputprotoMsgIDPath);
            }
            if (!Directory.Exists(outputHintPath))
            {
                Directory.CreateDirectory(outputHintPath);
            }

            Console.WriteLine("originProtoFileDic:" + originProtoFileDic);
            Console.WriteLine("outputProtoPath:" + outputProtoPath);
            Console.WriteLine("outputProtoEnumPath:" + outputProtoEnumPath);
            Console.WriteLine("outputprotoMsgIDPath:" + outputprotoMsgIDPath);

            Console.WriteLine("outputHintPath:" + outputHintPath);
        }
    }
}