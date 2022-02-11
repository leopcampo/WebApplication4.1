<%@ Page Language="C#" AutoEventWireup="true"  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  


<html xmlns="http://www.w3.org/1999/xhtml">  

 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         
         string n1;
         n1 = Textbox1.Text;
         Label1.Text = n1[0].ToString();

     }

     

     void MyButton3_OnClick(object sender, EventArgs e)
     {
         //If ViewState Value is not Null then Value of View State is Assign to TextBox  
         Textbox1.Text = Textbox2.Text = string.Empty;

     }
    </script> 

<head runat="server">  
    <title></title>  
</head>  
<body>  
    <p><br /><br /><br /></p>
    <center>
    <form id="MyForm" runat="server">
            <asp:textbox id="Textbox1" text= "Primeiro nome" runat="server"></asp:textbox>
        <asp:textbox id="Textbox2" text="Segundo nome" runat="server"></asp:textbox>
            <asp:button id="MyButton" text="Resultado" OnClick="MyButton_OnClick" runat="server"></asp:button> 
        <asp:button id="Button2" text="Limpar" OnClick="MyButton3_OnClick" runat="server"></asp:button> 
            Resultado: <asp:label id="MyLabel" runat="server"></asp:label>
        Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label>
        </form>
    </center>
</body>  
</html>  


