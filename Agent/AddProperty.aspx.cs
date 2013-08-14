using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Agent_AddProperty : System.Web.UI.Page
{
    PropertyBO oPropertyBO = new PropertyBO();
    PropertyImageBO oPropertyImageBO = new PropertyImageBO();
    AgentBO oAgentBO = new AgentBO();
    PropertyBAL oPropertyBAL = new PropertyBAL();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            oPropertyBO.description = txtDetail.Text;
            oPropertyBO.address = txtAddress.Text;
            oPropertyBO.size = int.Parse(txtArea.Text);
            oPropertyBO.rate = int.Parse(txtRate.Text);
            oPropertyBO.totalImages = 1;
            oPropertyBO.parkings = int.Parse(txtParking.Text);
            oPropertyBO.toilets = int.Parse(txtToilet.Text);
            oPropertyBO.kitchens = int.Parse(txtKitchen.Text);
            oPropertyBO.hasReception = chkReception.Checked;
            oPropertyBO.isFurnished = chkFurnished.Checked;
            oPropertyImageBO.image = "";
            oAgentBO.name = txtName.Text;
            oAgentBO.business = txtBusiness.Text;
            oAgentBO.email = txtEmail.Text;
            oAgentBO.phone = txtPhone.Text;
            oAgentBO.status = true;
            oPropertyBAL.InsertProperty(oPropertyBO, oPropertyImageBO, oAgentBO);
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message.ToString());    
        }
    }
}