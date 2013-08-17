using System;
using System.Collections.Generic;
using System.Text;

/// <summary>
/// Summary description for ValidationMessages
/// </summary>
public class ValidationMessages
{
    public static readonly string Url = "* Please enter a valid URL.<br>Valid " +
           "characters are all alphanumeric characters and .?" +
           "&_=-$<br> example: home.aspx?id=5&name=$my_name";
    public static readonly string Email = "* Please enter a valid Email.";
    public static readonly string Required = "*";
    public static readonly string Date =
       "* Please enter a valid date in dd-MM-yyyy format.";
    public static readonly string Time =
       "* Please enter a valid time in hh:mm:ss am format.";
    public static readonly string Digit = "* Must be a valid number.";    
    public static readonly string NonNegative = "* Must be a non-negative number.";
    public static readonly string ZipCode = "* Please enter a valid zip code in ##### or #####-#### format.";
    public static readonly string String = "* Please enter a characters and space.";

    public static string MaxLength(int len)
    {
        return "* Maximum " + len.ToString() +
               " characters are allowed.";
    }
}
