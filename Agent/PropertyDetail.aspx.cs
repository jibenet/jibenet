using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
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
                if (Page.RouteData.Values["pID"] != null)
                {
                    try
                    {
                        oPropertyBO.propertyID = int.Parse(Page.RouteData.Values["pID"].ToString());
                        DataTable dt = new DataTable();
                        dt = oPropertyBAL.FindPropertyByID(oPropertyBO);
                        if (dt.Rows.Count > 0)
                        {
                            Page.Title = "Clipas - " + dt.Rows[0]["name"].ToString();

                            HtmlMeta _metaD = new HtmlMeta();
                            _metaD.Name = "description";
                            _metaD.Content = dt.Rows[0]["description"].ToString();

                            HtmlMeta _metaK = new HtmlMeta();
                            _metaK.Name = "keywords";
                            _metaK.Content = "Brasil, São Paulo, Loja, Escritório, À Venda, Para Alugar";

                            ((Control)Header).Controls.Add(_metaD);
                            ((Control)Header).Controls.Add(_metaK);

                            lblName.Text = dt.Rows[0]["name"].ToString();
                            lblAddress.Text = dt.Rows[0]["address"].ToString();
                            if (dt.Rows[0]["size"].ToString() == "1")
                            {
                                lblArea.Text = "N/A";
                                lblAreaI.Text = "N/A";
                            }
                            else
                            {
                                lblArea.Text = dt.Rows[0]["size"].ToString();
                                lblAreaI.Text = dt.Rows[0]["size"].ToString();
                            }
                            if (int.Parse(dt.Rows[0]["rate"].ToString()) <= 100)
                            {
                                lblRate.Text = "N/A";
                                lblRateI.Text = "N/A";
                            }
                            else
                            {
                                lblRate.Text = dt.Rows[0]["rate"].ToString();
                                lblRateI.Text = dt.Rows[0]["rate"].ToString();
                            }                            
                            propertyDetail.InnerHtml = dt.Rows[0]["description"].ToString();
                            hdLatitude.Value = dt.Rows[0]["latitude"].ToString();
                            hdLongitude.Value = dt.Rows[0]["longitude"].ToString();
                            if ((dt.Rows[0]["parkings"].ToString() != string.Empty) && (dt.Rows[0]["parkings"].ToString() != "0"))
                            {
                                divParking.Visible = true;
                                iParking.Visible = true;
                                lblParking.Visible = true;
                                lblParking.Text = dt.Rows[0]["parkings"].ToString() + " Estacionamento";
                            }
                            if ((dt.Rows[0]["toilets"].ToString() != string.Empty) && (dt.Rows[0]["toilets"].ToString() != "0"))
                            {
                                divToilet.Visible = true;
                                iToilet.Visible = true;
                                lblToilet.Visible = true;
                                lblToilet.Text = dt.Rows[0]["toilets"].ToString() + " Banheiros";
                            }
                            if ((dt.Rows[0]["kitchens"].ToString() != string.Empty) && (dt.Rows[0]["kitchens"].ToString() != "0"))
                            {
                                divKitchen.Visible = true;
                                iKitchen.Visible = true;
                                lblKitchen.Visible = true;
                                lblKitchen.Text = dt.Rows[0]["kitchens"].ToString() + " Cozinha";
                            }
                            if (bool.Parse(dt.Rows[0]["hasReception"].ToString()))
                            {
                                divReception.Visible = true;
                                iReception.Visible = true;
                                lblReception.Visible = true;
                                lblReception.Text = "1 Area de Recepcao";
                            }

                            oPropertyBO.propertyID = int.Parse(Page.RouteData.Values["pID"].ToString());
                            DataTable dtable = new DataTable();
                            dtable = oPropertyBAL.FindImagesByPropertyID(oPropertyBO);
                            string sSlider = "<ul class='slides'>";
                            if (dtable.Rows.Count == 0)
                            {
                                sSlider += "<li><img src='images/707x530.jpg' width='707px' height='530px'/></li>";
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
                            map.Visible = true;

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
                            oPropertyBO.propertyID = int.Parse(Page.RouteData.Values["pID"].ToString());
                            oPropertyBO.address = dt.Rows[0]["address"].ToString().Substring(0, 5);
                            DataTable dtbl = new DataTable();
                            dtbl = oPropertyBAL.FindSimilarPropertyByAddress(oPropertyBO);
                            if (dtbl.Rows.Count == 1)
                            {
                                divN1.Visible = true;
                                string url = Request.Url.ToString().Substring(0, Request.Url.ToString().LastIndexOf('/'));
                                ibtnImage1.PostBackUrl = url + "/" + dtbl.Rows[0]["propertyID"].ToString();
                                ibtnImage1.ImageUrl = dtbl.Rows[0]["image"].ToString();
                                lblDescription1.Text = dtbl.Rows[0]["description"].ToString();
                                if (dtbl.Rows[0]["size"].ToString() == "1")
                                {
                                    lblArea1.Text = "N/A";
                                }
                                else
                                {
                                    lblArea1.Text = dtbl.Rows[0]["size"].ToString();
                                }
                                if (int.Parse(dtbl.Rows[0]["rate"].ToString()) <= 100)
                                {
                                    lblRate1.Text = "N/A";
                                }
                                else
                                {
                                    lblRate1.Text = dtbl.Rows[0]["rate"].ToString();
                                } 
                            }
                            if (dtbl.Rows.Count == 2)
                            {
                                divN1.Visible = true;
                                string url = Request.Url.ToString().Substring(0, Request.Url.ToString().LastIndexOf('/'));
                                ibtnImage1.PostBackUrl = url + "/" + dtbl.Rows[0]["propertyID"].ToString();
                                ibtnImage1.ImageUrl = dtbl.Rows[0]["image"].ToString();
                                lblDescription1.Text = dtbl.Rows[0]["description"].ToString();
                                if (dtbl.Rows[0]["size"].ToString() == "1")
                                {
                                    lblArea1.Text = "N/A";
                                }
                                else
                                {
                                    lblArea1.Text = dtbl.Rows[0]["size"].ToString();
                                }
                                if (int.Parse(dtbl.Rows[0]["rate"].ToString()) <= 100)
                                {
                                    lblRate1.Text = "N/A";
                                }
                                else
                                {
                                    lblRate1.Text = dtbl.Rows[0]["rate"].ToString();
                                } 
                                divN2.Visible = true;
                                url = Request.Url.ToString().Substring(0, Request.Url.ToString().LastIndexOf('/'));
                                ibtnImage2.PostBackUrl = url + "/" + dtbl.Rows[1]["propertyID"].ToString();
                                ibtnImage2.ImageUrl = dtbl.Rows[1]["image"].ToString();
                                lblDescription2.Text = dtbl.Rows[1]["description"].ToString();
                                if (dtbl.Rows[1]["size"].ToString() == "1")
                                {
                                    lblArea2.Text = "N/A";
                                }
                                else
                                {
                                    lblArea2.Text = dtbl.Rows[1]["size"].ToString();
                                }
                                if (int.Parse(dtbl.Rows[1]["rate"].ToString()) <= 100)
                                {
                                    lblRate2.Text = "N/A";
                                }
                                else
                                {
                                    lblRate2.Text = dtbl.Rows[1]["rate"].ToString();
                                } 
                            }                           
                        }
                    }
                    catch
                    {
                        Response.Redirect(UrlUtil.MyWebRootUrl + "PostProperty", false);  
                    }
                }
                else
                {
                    Response.Redirect(UrlUtil.MyWebRootUrl + "PostProperty", false);  
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }   
}