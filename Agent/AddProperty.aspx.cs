﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Agent_AddProperty : System.Web.UI.Page
{
    PropertyBO oPropertyBO = new PropertyBO();
    PropertyImageBO oPropertyImageBO = new PropertyImageBO();
    AgentBO oAgentBO = new AgentBO();
    PropertyBAL oPropertyBAL = new PropertyBAL();
    AgentBAL oAgentBAL = new AgentBAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        revalAddress.ValidationExpression = RegExp.MaxLength(500);
        revalAddress.ErrorMessage = ValidationMessages.MaxLength(500);

        revalZipCode.ValidationExpression = RegExp.ZipCode;
        revalZipCode.ErrorMessage = ValidationMessages.ZipCode;

        revalDate.ValidationExpression = RegExp.Date;
        revalDate.ErrorMessage = ValidationMessages.Date;

        revalArea.ValidationExpression = RegExp.Digit;
        revalArea.ErrorMessage = ValidationMessages.Digit;

        revalRate.ValidationExpression = RegExp.Digit;
        revalRate.ErrorMessage = ValidationMessages.Digit;

        revalParkings.ValidationExpression = RegExp.Digit;
        revalParkings.ErrorMessage = ValidationMessages.Digit;

        revalToilets.ValidationExpression = RegExp.Digit;
        revalToilets.ErrorMessage = ValidationMessages.Digit;

        revalKitchen.ValidationExpression = RegExp.Digit;
        revalKitchen.ErrorMessage = ValidationMessages.Digit;        

        revalDetail.ValidationExpression = RegExp.MaxLength(2000);
        revalDetail.ErrorMessage = ValidationMessages.MaxLength(200);

        revalName.ValidationExpression = RegExp.MaxLength(100);
        revalName.ErrorMessage = ValidationMessages.MaxLength(100);
        revalName.ValidationExpression = RegExp.String;
        revalName.ErrorMessage = ValidationMessages.String;      

        revalBusiness.ValidationExpression = RegExp.MaxLength(100);
        revalBusiness.ErrorMessage = ValidationMessages.MaxLength(100);
        revalBusiness.ValidationExpression = RegExp.String;
        revalBusiness.ErrorMessage = ValidationMessages.String;       

        revalEmail.ValidationExpression = RegExp.MaxLength(100);
        revalEmail.ErrorMessage = ValidationMessages.MaxLength(100);
        revalEmail.ValidationExpression = RegExp.Email;
        revalEmail.ErrorMessage = ValidationMessages.Email;

        revalPhone.ValidationExpression = RegExp.MaxLength(10);
        revalPhone.ErrorMessage = ValidationMessages.MaxLength(10);
        revalPhone.ValidationExpression = RegExp.Digit;
        revalPhone.ErrorMessage = ValidationMessages.Digit;        

        if(Page.IsPostBack == false)
        {
            Session["filename"] = string.Empty;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string images = string.Empty;
                       
            oPropertyBO.description = txtDetail.Text;
            oPropertyBO.address = txtAddress.Text;
            oPropertyBO.zipCode = txtZipCode.Text;
            oPropertyBO.size = int.Parse(txtArea.Text);
            oPropertyBO.rate = int.Parse(txtRate.Text);
            oPropertyBO.totalImages = 0;
            oPropertyBO.parkings = int.Parse(txtParkings.Text);
            oPropertyBO.toilets = int.Parse(txtToilets.Text);
            oPropertyBO.kitchens = int.Parse(txtKitchens.Text);
            oPropertyBO.hasReception = chkReception.Checked;
            oPropertyBO.isFurnished = chkFurnished.Checked;
            if (Session["filename"] != null && Session["filename"].ToString().Length != 0)
            {
                images = Session["filename"].ToString().Substring(0, Session["filename"].ToString().Length - 1);
            }
            oPropertyImageBO.image = images;
            oAgentBO.name = txtName.Text;
            oAgentBO.business = txtBusiness.Text;
            oAgentBO.email = txtEmail.Text;
            oAgentBO.phone = txtPhone.Text;
            oAgentBO.status = true;

            DataTable dt = oPropertyBAL.InsertProperty(oPropertyBO, oPropertyImageBO, oAgentBO);
            if (dt.Rows.Count != 0)
            {
                Response.Write(dt.Rows[0]["message"].ToString());
            }
            Session["filename"] = string.Empty;
            Clear();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message.ToString());    
        }
    }
    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        try
        {
            oAgentBO.email = txtEmail.Text;  

            DataTable dt = oAgentBAL.FindAgent(oAgentBO);

            if (dt.Rows.Count != 0)
            {
                txtName.Text = dt.Rows[0]["name"].ToString();
                txtBusiness.Text = dt.Rows[0]["business"].ToString();
                txtPhone.Text = dt.Rows[0]["phone"].ToString();
                txtName.Enabled = false;
                txtBusiness.Enabled = false;
                txtPhone.Enabled = false;
            }
            else 
            {              
                txtName.Enabled = true;
                txtBusiness.Enabled = true;
                txtPhone.Enabled = true;
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    public void Clear()
    {
        foreach (Control controls in Form.Controls)
        {
            if (controls is TextBox)
            {
                TextBox txt = (TextBox)controls;
                txt.Text = string.Empty;
            }         
            if (controls is CheckBox)
            {
                CheckBox chk = (CheckBox)controls;
                chk.Checked = false;
            }
        }
    }
}