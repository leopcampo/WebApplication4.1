<%@ Page Language="C#" AutoEventWireup="true"  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  


<html xmlns="http://www.w3.org/1999/xhtml">  

 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1, n2, soma;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         soma = n1 + n2;
         ViewState["soma"] = soma;
         MyLabel.Text = soma.ToString(); // Converte Inteiro em String
         
     }



     void MyButton2_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["soma"].ToString();
        
    }

     void MyButton3_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Textbox1.Text = Textbox2.Text = string.Empty;
        
    }
     void MyButton4_OnClick(object sender, EventArgs e) 
     {
         int n1, n2, subtracao;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         subtracao = n1 - n2;
         ViewState["subtracao"] = subtracao;
         MyLabel.Text = subtracao.ToString(); // Converte Inteiro em String

     }
     void MyButton5_OnClick(object sender, EventArgs e)
     {
         int n1, n2, mult;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         mult = n1 * n2;
         ViewState["mult"] = mult;
         MyLabel.Text = mult.ToString(); // Converte Inteiro em String
     }
     void MyButton6_OnClick (object sender, EventArgs e)
        {
            int n1, n2;
            float div;
            n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
            n2 = int.Parse(Textbox2.Text);
            div = n1/n2;
            ViewState["div"] = div;
            MyLabel.Text = div.ToString(); // Converte Inteiro em String

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
            <asp:button id="MyButton" text="Somar" OnClick="MyButton_OnClick" runat="server"></asp:button> 
         <asp:button id="MyButton4" text="Subtração" OnClick="MyButton4_OnClick" runat="server"></asp:button> 
         <asp:button id="MyButton5" text="multiplicação" OnClick="MyButton5_OnClick" runat="server"></asp:button> 
         <asp:button id="MyButton6" text="divisão" OnClick="MyButton6_OnClick" runat="server"></asp:button> 
        <asp:button id="Button1" text="Ultima Soma" OnClick="MyButton2_OnClick" runat="server"></asp:button> 
        <asp:button id="Button2" text="Limpar" OnClick="MyButton3_OnClick" runat="server"></asp:button> 
            Resultado: <asp:label id="MyLabel" runat="server"></asp:label>
        Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label>
        </form>
    </center>
</body>  
</html>  


