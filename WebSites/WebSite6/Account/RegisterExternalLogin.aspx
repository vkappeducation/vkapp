﻿<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterExternalLogin.aspx.cs" Inherits="Account_RegisterExternalLogin" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Регистрация по учетной записи <%: ProviderDisplayName %></h1>
        <h2><%: ProviderUserName %>.</h2>
    </hgroup>

    
    <asp:Label runat="server" ID="providerMessage" CssClass="field-validation-error" />
    

    <asp:PlaceHolder runat="server" ID="userNameForm">
        <fieldset>
            <legend>Форма связывания</legend>
            <p>
                Вы вошли через <strong><%: ProviderDisplayName %></strong>как
                <strong><%: ProviderUserName %></strong>. Введите ниже имя пользователя для текущего сайта
                и нажмите кнопку входа.
            </p>
            <ol>
                <li class="email">
                    <asp:Label runat="server" AssociatedControlID="userName">Имя пользователя</asp:Label>
                    <asp:TextBox runat="server" ID="userName" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="userName"
                        Display="Dynamic" ErrorMessage="Имя пользователя является обязательным" ValidationGroup="NewUser" />
                    
                    <asp:Label runat="server" ID="userNameMessage" CssClass="field-validation-error" />
                    
                </li>
            </ol>
            <asp:Button runat="server" Text="Выполнить вход" ValidationGroup="NewUser" OnClick="logIn_Click" />
            <asp:Button runat="server" Text="Отмена" CausesValidation="false" OnClick="cancel_Click" />
        </fieldset>
    </asp:PlaceHolder>
</asp:Content>
