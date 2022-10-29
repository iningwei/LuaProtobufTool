using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LuaProtobufTool.Entity
{
    public class ProtoEntity
    {
        public bool isEnum = false;
        public List<string> allLines = new List<string>();
        public string entityName;
        public void AddLine(string content)
        {
            allLines.Add(content);
        }


    }
}
