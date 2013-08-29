using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Agent_PropertyDetail : System.Web.UI.Page
{
    PropertyBO oPropertyBO = new PropertyBO();
    PropertyBAL oPropertyBAL = new PropertyBAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsPostBack == false)
            {
                if (Request.QueryString["pID"] != null)
                {
                    try
                    {
                        oPropertyBO.propertyID = int.Parse(Request.QueryString["pID"].ToString());
                        DataTable dt = new DataTable();
                        dt = oPropertyBAL.FindPropertyByID(oPropertyBO);
                        if (dt.Rows.Count >= 0)
                        {
                            lblName.Text = dt.Rows[0]["name"].ToString();
                            lblAddress.Text = dt.Rows[0]["address"].ToString();
                            lblArea.Text = dt.Rows[0]["size"].ToString();
                            lblRate.Text = dt.Rows[0]["rate"].ToString();
                            propertyDetail.InnerHtml = dt.Rows[0]["description"].ToString();
                            lblAreaI.Text = dt.Rows[0]["size"].ToString();
                            lblRateI.Text = dt.Rows[0]["rate"].ToString();
                            hdLatitude.Value = dt.Rows[0]["latitude"].ToString();
                            hdLongitude.Value = dt.Rows[0]["longitude"].ToString();
                            lblParking.Text = dt.Rows[0]["parkings"].ToString();
                            lblToilet.Text = dt.Rows[0]["toilets"].ToString();
                            lblKitchen.Text = dt.Rows[0]["kitchens"].ToString();
                            if (bool.Parse(dt.Rows[0]["hasReception"].ToString()))
                            {
                                lblReception.Text = "1";
                            }
                            else
                            {
                                lblReception.Text = "0";
                            }
                            oPropertyBO.propertyID = int.Parse(Request.QueryString["pID"].ToString());
                            DataTable dtable = new DataTable();
                            dtable = oPropertyBAL.FindImagesByPropertyID(oPropertyBO);
                            string sSlider = "<ul class='slides'>";
                            if (dtable.Rows.Count == 0)
                            {
                                sSlider += "<li><img src='http://clipas.venturepact.com/agent/images/707x530.jpg' width='707px' height='530px'/></li>";
                            }
                            else
                            {
                                for (int i = 0; i < dtable.Rows.Count; i++)
                                {
                                    sSlider += "<li><img src='" + dtable.Rows[i]["image"].ToString() + "' width='707px' height='530px'/></li>";
                                }
                            }
                            sSlider += "</ul>";
                            slider.Visible = true;
                            slider.InnerHtml = sSlider;

                            if (dtable.Rows.Count > 1)
                            {
                                string sCarousel = "<ul class='slides'>";
                                for (int i = 0; i < dtable.Rows.Count; i++)
                                {
                                    sCarousel += "<li><img src='" + dtable.Rows[i]["image"].ToString() + "' width='210px' height='150px'></li>";
                                }
                                sCarousel += "</ul>";
                                carousel.Visible = true;
                                carousel.InnerHtml = sCarousel;
                            }
                        }
                    }
                    catch
                    {
                        Response.Redirect("ListProperty.aspx", false);  
                    }
                }
                else
                {
                    Response.Redirect("ListProperty.aspx", false);  
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }   
}