<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="somar.aspx.cs" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  


<html xmlns="http://www.w3.org/1999/xhtml">  

 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1;
         float porcentagem;
         n1 = int.Parse(Textbox1.Text);
         porcentagem = (n1*10)/100 ;
         ViewState["porcentagem"] = porcentagem;
         MyLabel.Text = porcentagem.ToString(); // Converte Inteiro em String
     }

     void MyButton2_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["porcentagem"].ToString();
        
    }

     void MyButton3_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Textbox1.Text = string.Empty;
        
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
            <asp:button id="MyButton" text="10%" OnClick="MyButton_OnClick" runat="server"></asp:button> 
        <asp:button id="Button1" text="Ultima porcentagem" OnClick="MyButton2_OnClick" runat="server"></asp:button> 
        <asp:button id="Button2" text="Limpar" OnClick="MyButton3_OnClick" runat="server"></asp:button> 
            Resultado: <asp:label id="MyLabel" runat="server"></asp:label>
        Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label>
        </form>
    </center>
</body>  
</html>  


