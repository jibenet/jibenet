using System;
using System.Collections.Generic;
using System.Text;

/// <summary>
/// Summary description for ValidationMessages
/// </summary>
public class ValidationMessages
{
    public static readonly string Url = "* Por favor insira um URL válido. <br> Valid " +
            "personagens são todos os caracteres alfanuméricos e.?" +
            "& _ = - $ <br> exemplo:? home.aspx id = 5 & name = $ my_name";
    public static readonly string Email = "* Por favor insira um e-mail válido.";
    public static readonly string Required = "*";
    public static readonly string Date =
       "* Por favor insira uma data válida no formato dd-MM-yyyy.";
    public static readonly string Time =
       "* Por favor insira um tempo válido em hh: mm: ss am.";
    public static readonly string Digit = "* Deve ser um número válido.";
    public static readonly string NonNegative = "* Deve ser um número não-negativo.";
    public static readonly string ZipCode = "* CEP válido é # # # # # ou # # # # # - # # # # formato.";
    public static readonly string String = "* Por favor insira um caracteres e espaço.";

    public static string MaxLength(int len)
    {
        return "* máximo " + len.ToString() +
               " caracteres são permitidos.";
    }
}
