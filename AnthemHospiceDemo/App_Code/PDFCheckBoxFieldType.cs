﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AnthemHospiceDemo
{
    public class PDFCheckBoxFieldType : PDFFieldType
    {
        public override int Type
        {
            get { return 2; }
        }

        public override string ToString()
        {
            return "CheckBox";
        }
    }
}