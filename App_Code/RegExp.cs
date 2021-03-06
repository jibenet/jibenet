﻿using System;
using System.Collections.Generic;
using System.Text;

/// <summary>
/// Summary description for RegExp
/// </summary>
public class RegExp
{	
    public static readonly string Url = "[a-zA-Z0-9-_\\$]+(//.[a-za-z0-9-_//$]+)?\\??" + 
            "[a-zA-Z0-9-_\\$]+=?[a-zA-Z0-9-_\\$]+(&[a-zA-Z0-9-_\\$]+=" + 
            "[a-zA-Z0-9-_\\$]+)*" + ";" + ">\\.[a-zA-Z0-9-_\\$]+)?\\??" + 
            "[a-zA-Z0-9-_\\$]+=?[a-zA-Z0-9-_\\$]+(&" + 
            "[a-zA-Z0-9-_\\$]+=[a-zA-Z0-9-_\\$]+)*";    
    public static readonly string Email = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
    public static readonly string Date = "((175[7-9])|(17[6-9][0-9])|(1[8-9][0-9][0-9])|" +
            "([2-9][0-9][0-9][0-9]))[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])";
            // supports dates from 1-1-1757 to 31-12-9999 for SQL Server 2000 Date Range 
    public static readonly string Time = "(0[1-9]|[1][0-2])[:]" + 
            "(0[0-9]|[1-5][0-9])[:](0[0-9]|[1-5][0-9])[ ][A|a|P|p][M|m]";
    public static readonly string Number = "[-+]?[0-9]*\\.?[0-9]*";
    public static readonly string Digit = "[0-9]*";
    public static readonly string NonNegative = "[+]?[0-9]*\\.?[0-9]*";
    public static readonly string ZipCode = "^[0-9]{5}(-[0-9]{3})?$";
    public static readonly string Phone = "^[0-9]{5}(-[0-9]{4})?$";
    public static readonly string String = "^[a-zA-Z\\s]+$";    

    public static string MaxLength(int len)
    {
        return "[\\s\\S]{0," + len.ToString() + "}";
    }
}