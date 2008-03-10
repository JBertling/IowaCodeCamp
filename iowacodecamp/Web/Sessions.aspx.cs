﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Sessions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            repeatOfficialSessions.DataSource = Models.Session.GetAcceptedSessions();
            repeatOfficialSessions.DataBind();

            repeatSessions.DataSource = Models.Session.GetProposedSessions();
            repeatSessions.DataBind();
        }
    }
}
