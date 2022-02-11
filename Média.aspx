<%@ Page Language="C#" AutoEventWireup="true" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  


<html xmlns="http://www.w3.org/1999/xhtml">  

 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1, n2, n3, n4, n5;
         float media;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         n3 = int.Parse(Textbox3.Text);
         n4 = int.Parse(Textbox4.Text);
         n5 = int.Parse(Textbox5.Text);
         media = (n1 + n2 + n3 + n4 + n5)/5;
         ViewState["media"] = media;
         MyLabel.Text = media.ToString(); // Converte Inteiro em String
     }

     void MyButton2_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["media"].ToString();
        
    }

     void MyButton3_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Textbox1.Text = Textbox2.Text = Textbox3.Text = Textbox4.Text = Textbox5.Text = string.Empty;
        
    }
    </script> 

<head runat="server">  
    <title></title>  
</head>  
<body>  
    <p><br /><br /><br /></p>
    <center>
    <form id="MyForm" runat="server">
            <asp:textbox id="Textbox1" text="Número 1" runat="server"></asp:textbox>
        <asp:textbox id="Textbox2" text="Número 2" runat="server"></asp:textbox>
         <asp:textbox id="Textbox3" text="Número 3" runat="server"></asp:textbox>
        <asp:textbox id="Textbox4" text="Número 4" runat="server"></asp:textbox>
        <asp:textbox id="Textbox5" text="Número 5" runat="server"></asp:textbox>
            <asp:button id="MyButton" text="Média" OnClick="MyButton_OnClick" runat="server"></asp:button> 
        <asp:button id="Button1" text="Ultima Soma" OnClick="MyButton2_OnClick" runat="server"></asp:button> 
        <asp:button id="Button2" text="Limpar" OnClick="MyButton3_OnClick" runat="server"></asp:button> 
            Resultado: <asp:label id="MyLabel" runat="server"></asp:label>
        Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label>
        </form>
    </center>
</body>  
</html>  


