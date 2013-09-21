using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for MetaTags
/// </summary>
public class MetaTags
{
    #region Private vars: Keywords/Descriptions
    #region Home Page
    /// <summary> keywords</summary>
    private const string _keywords_Home =
      "HTML5, CSS, Javascript, jQuery, WebTV, YouTube API, calculators";
    /// <summary>description</summary>
    private const string _description_Home = "HTML5 best practices";
    #endregion

    #region Resources
    /// <summary> keywords</summary>
    private const string _keywords_Resources =
      "HTML5, web development, online calculators, jQuery";
    /// <summary>description</summary>
    private const string _description_Resources = "HTML5 development resources";
    #endregion
    #endregion

    #region Public: Page-specific Meta tags
    /// <summary>Home Page Keywords</summary>
    public static HtmlMeta Keywords_Home
    { get { return FormatMetaByName("Keywords", _keywords_Home); } }

    public static HtmlMeta Description_Home
    { get { return FormatMetaByName("Description", _description_Home); } }

    /// <summary>Resources Keywords</summary>
    public static HtmlMeta Keywords_Resources
    { get { return FormatMetaByName("Keywords", _keywords_Resources); } }

    public static HtmlMeta Description_Resources
    { get { return FormatMetaByName("Description", _description_Resources); } }
    #endregion

    #region Common-all-page meta tags

    /// <summary>Author Meta Tag</summary>
    public static HtmlMeta Author
    {
        get { return FormatMetaByHttpEquiv("Author", "Alexander Bell"); }
    }

    /// <summary>Copyright Meta Tag</summary>
    public static HtmlMeta Copyright
    {
        get
        {
            return FormatMetaByHttpEquiv("Copyright",
               "2005-2013 Infosoft International Inc");
        }
    }

    /// <summary> Robots Meta Tag Content Enumeration</summary>
    public enum RobotContent { all, noindex, nofollow, };
    /// <summary>Robots Meta Tag</summary>
    public static HtmlMeta Robots(RobotContent Content)
    {
        return FormatMetaByName("Robots", Content.ToString());
    }

    /// <summary> Distribution Meta Tag Content Enumeration</summary>
    public enum DistributionContent { global, local, iu };
    /// <summary>Distribution Meta Tag</summary>
    public static HtmlMeta Distribution(DistributionContent Content)
    {
        return FormatMetaByName("Distribution", Content.ToString());
    }

    /// <summary>Expires Meta Tag</summary>
    public static HtmlMeta Expires(string Content)
    {
        return FormatMetaByHttpEquiv("Expires", Content.ToString());
    }
    #endregion

    #region Refresh Meta Tag
    /// <summary>Refresh Meta Tag with URL specified</summary>
    /// <param name="Delay">string</param>
    /// <param name="URL">string</param>
    /// <returns>HtmlMeta </returns>
    public static HtmlMeta Refresh(string Delay, string URL)
    {
        return FormatMetaByHttpEquiv("Refresh", Delay + ";" + URL);
    }
    ///**************************************************************************
    /// <summary>Refresh Meta Tag, no URL: redirect to itself</summary>
    /// <param name="Delay">string</param>
    /// <returns>HtmlMeta </returns>
    public static HtmlMeta Refresh(string Delay)
    {
        return FormatMetaByHttpEquiv("Refresh", Delay);
    }
    #endregion

    #region Private methods
    /// <summary>Meta Tag formatted by Name</summary>
    /// <param name="MetaName">string</param>
    /// <param name="Content">string</param>
    /// <returns>HtmlMeta </returns>
    private static HtmlMeta FormatMetaByName(string MetaName, string Content)
    {
        HtmlMeta _meta = new HtmlMeta();
        _meta.Name = MetaName;
        _meta.Content = Content;
        return _meta;
    }

    /// <summary>Meta Tag formatted by Http_Equiv</summary>
    /// <param name="HttpEquiv">string</param>
    /// <param name="Content">string</param>
    /// <returns>HtmlMeta </returns>
    private static HtmlMeta FormatMetaByHttpEquiv(string HttpEquiv, string Content)
    {
        HtmlMeta _meta = new HtmlMeta();
        _meta.HttpEquiv = HttpEquiv;
        _meta.Content = Content;
        return _meta;
    }
    #endregion
}