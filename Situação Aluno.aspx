<%@ Page Language="C#" AutoEventWireup="true" " %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  


<html xmlns="http://www.w3.org/1999/xhtml">  

 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1, n2, n3, n4;
         float media;
         string nome;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         n3 = int.Parse(Textbox3.Text);
         n4 = int.Parse(Textbox4.Text);
         nome = Textbox5.Text;
         media = (n1 + n2 + n3 + n4)/4;
         ViewState["media"] = media;
         ViewState["nome"] = nome;
         MyLabel.Text = media.ToString(); // Converte Inteiro em String
         MyLabel2.Text = nome;
         if (media >= 6)
         {
             MyLabel3.Text = "Aprovado";
         }else
         {
             MyLabel3.Text = "Reprovado";
         }

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
            <asp:textbox id="Textbox5" text="Nome" runat="server"></asp:textbox>
            <asp:button id="MyButton" text="Calcular" OnClick="MyButton_OnClick" runat="server"></asp:button> 
            Média: <asp:label id="MyLabel" runat="server"></asp:label>
            Nome do aluno: <asp:label id="MyLabel2" runat="server"></asp:label>
            Situação: <asp:Label id ="MyLabel3" runat ="server"></asp:Label>
       
        </form>
    </center>
</body>  
</html>  


