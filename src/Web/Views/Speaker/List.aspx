﻿<%@ Page Title="Speakers | Iowa Code Camp" Language="C#" Inherits="BasePage" MasterPageFile="~/Views/Layouts/Site.master" %>
<%@ Register src="../Shared/ComingSoon.ascx" tagname="ComingSoon" tagprefix="cs" %>
<%@ Import Namespace="Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPH" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function() {
            $("#speakers").addClass("active");
        });
    </script>

    <style type="text/css">
        div ol {
            padding-left: 25px;
        }
        #speakers ul {
            list-style-type: none;
        }
        #speakers h3 {
            display: block;
            clear:left;
            padding-top:20px;
            font-family:Arial,Helvetica;
        }
        #speakers img{
        	margin-right:10px; float: left;
        }
        #speakers p 
        {
        	margin:0 0;
        	padding:0;
        	margin-bottom:10px;
            font-family:Arial,Helvetica;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="normalPH" Runat="Server">
<h2><%= Event.NextEventName %> - Speakers</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="primaryPH" Runat="Server">

<%--
<cs:ComingSoon runat="server" />
--%>

    <div id="speakers">

<%--
<a href="https://docs.google.com/open?id=0B5P5ekZgdxegUzg0bVBZZHh3Rk0">Open in Google Docs</a>
--%>

<%--
<iframe src="https://docs.google.com/open?id=0B5P5ekZgdxegUzg0bVBZZHh3Rk0&pid=explorer&a=v&chrome=false&embedded=true" width="640" height="480"></iframe>
--%>

<% foreach (var speaker in CurrentSpeaker.List())
   {%>
   
<h3 id="<%=speaker.SpeakerKey %>"><%=speaker.SpeakerName%></h3>
<!--<img src="<%=SpeakerImageUrl(speaker.HeadshotFile)%>" width="90" alt="" />-->
<p><%=speaker.SpeakerBio%>
</p>
<%
   	foreach (var speakerSession in CurrentSession.SpeakerSessions(speaker.SpeakerKey))
   	{
%>
<p>
  <%=speakerSession.SessionTime%> : <%=speakerSession.Room %> : <%=speakerSession.Title %> (Level: <%=speakerSession.SessionLevel %>)<br />
</p>
<%
   }
   } %>

   
<br>
<h2>Session Levels</h2> (see <a href="http://blogs.technet.com/b/ieitpro/archive/2006/09/29/459944.aspx">http://blogs.technet.com/b/ieitpro/archive/2006/09/29/459944.aspx</a>)
<br><br>
<b>Level 100 Description:</b><br>
Introductory and overview material. Assumes little or no expertise with topic and covers topic concepts, functions, features, and benefits.
<br><br>
<b>Level 200 Description:</b><br>
Intermediate material. Assumes 100-level knowledge and provides specific details about the topic.
<br><br>
<b>Level 300 Description:</b><br>
Advanced material. Assumes 200-level knowledge, in-depth understanding of features in a real-world environment, and strong coding skills. Provides a detailed technical overview of a subset of product/technology features, covering architecture, performance, migration, deployment, and development.
<br><br>
<b>Level 400 Description:</b><br>
Expert material. Assumes a deep level of technical knowledge and experience and a detailed, thorough understanding of topic. Provides expert-to-expert interaction and coverage of specialized topics.

   
<%--
<h3 id="SergioPereira">Sergio Pereira</h3>
<img src="<%= SpeakerImageUrl("sergio-profile_90_117.jpg") %>" width="90" alt="" />
<p>Sergio Pereira has been developing software professionally since the mid 90's. After a short period of desktop application development, Sergio changed his focus to web development and never looked back. He's a strong believer in continuous improvement of himself, the processes, and the tools he uses in the software craft.<br />
If you don't see Sergio in front of his computer screen, you will probably find him in front of an even bigger screen watching some live sports or a silly movie.
</p>
--%>

<%--
<h3 id="_________">__________</h3>
<img src="<%= SpeakerImageUrl("") %>" width="90" alt="" />
<p>
</p>
--%>
    </div>
</asp:Content>

