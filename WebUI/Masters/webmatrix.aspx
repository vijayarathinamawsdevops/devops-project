<%@ Page Language="c#" CodeBehind="webmatrix.aspx.cs" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.webmatrix" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.SqlClient" %>
<%@ import Namespace="eKaruvoolam.DataAccess" %>
<%@ import Namespace="eKaruvoolam.BusinessRules" %>
<HTML>
	<HEAD>
		<script runat="server">

    // TODO: update the ConnectionString and Command values for your application
    
    string ConnectionString = "server=sectt;database=ekaruvoolam;user id=karuvoolam;password=khazana";
    string SelectCommand = "SELECT DoCode,DoDesc,DoAdd1,DoAdd2,DoAdd3,DoGaz,DoLocn from DoMas";
    
    bool isEditing = false;
    
    void Page_Load(object sender, EventArgs e) {
    
        if (!Page.IsPostBack) {
    
            // Databind the data grid on the first request only
            // (on postback, bind only in editing, paging and sorting commands)
    
            BindGrid();
        }
    }
    
    // ---------------------------------------------------------------
    //
    // DataGrid Commands: Page, Sort, Edit, Update, Cancel, Delete
    //
    
    void DataGrid_ItemCommand(object sender, DataGridCommandEventArgs e) {
    
        // this event fires prior to all of the other commands
        // use it to provide a more graceful transition out of edit mode
    
        CheckIsEditing(e.CommandName);
    }
    
    void CheckIsEditing(string commandName) {
    
        if (DataGrid1.EditItemIndex != -1) {
    
            // we are currently editing a row
            if (commandName != "Cancel" && commandName != "Update") {
    
                // user's edit changes (if any) will not be committed
                Message.Text = "Your changes have not been saved yet.  Please press update to save your changes, or cancel to discard your changes, before selecting another item.";
                isEditing = true;
            }
        }
    }
    
    void DataGrid_Edit(object sender, DataGridCommandEventArgs e) {
    
        // turn on editing for the selected row
    
        if (!isEditing) {
            DataGrid1.EditItemIndex = e.Item.ItemIndex;
            BindGrid();
        }
    }
    
    void DataGrid_Update(object sender, DataGridCommandEventArgs e) {
    
        // update the database with the new values
    
        // get the edit text boxes
        string DoCode = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
        string DoDesc = ((TextBox)e.Item.Cells[3].Controls[0]).Text;
        string DoAdd1 = ((TextBox)e.Item.Cells[4].Controls[0]).Text;
        string DoAdd2 = ((TextBox)e.Item.Cells[5].Controls[0]).Text;
        string DoAdd3 = ((TextBox)e.Item.Cells[6].Controls[0]).Text;
        string DoGaz = ((TextBox)e.Item.Cells[7].Controls[0]).Text;
        string DoLocn = ((TextBox)e.Item.Cells[8].Controls[0]).Text;
        
        
    
        // TODO: update the Command value for your application
        SqlConnection myConnection = new SqlConnection(ConnectionString);
        SqlCommand UpdateCommand = new SqlCommand();
        UpdateCommand.Connection = myConnection;
    
        if (AddingNew)
            UpdateCommand.CommandText = "INSERT INTO DoMas(DoCode,DoDesc,DoAdd1,DoAdd2,DoAdd3,DoGaz,DoLocn) VALUES (@DoCode,@DoDesc,@DoAdd1,@DoAdd2,@DoAdd3,@DoGaz,@DoLocn)";
        else
            UpdateCommand.CommandText = "UPDATE DoMas SET DoDesc = @DoDesc, DoAdd1 = @DoAdd1,DoAdd2=@DoAdd2,DoAdd3 = @DoAdd3, DoGaz=@DoGaz,DoLocn=@DoLocn WHERE DoCode = @DoCode";
    
        UpdateCommand.Parameters.Add("@DoCode", SqlDbType.VarChar, 5).Value = DoCode;
        UpdateCommand.Parameters.Add("@DoDesc", SqlDbType.VarChar, 50).Value = DoDesc;
        UpdateCommand.Parameters.Add("@DoAdd1", SqlDbType.VarChar, 50).Value = DoAdd1;
        UpdateCommand.Parameters.Add("@DoAdd2", SqlDbType.VarChar, 50).Value = DoAdd2;
        UpdateCommand.Parameters.Add("@DoAdd3", SqlDbType.VarChar, 50).Value = DoAdd3;
        UpdateCommand.Parameters.Add("@DoGaz", SqlDbType.VarChar, 50).Value = DoGaz;
        UpdateCommand.Parameters.Add("@DoLocn", SqlDbType.VarChar, 50).Value = DoLocn;
    
        // execute the command
        try {
            myConnection.Open();
            UpdateCommand.ExecuteNonQuery();
        }
        catch (Exception ex) {
            Message.Text = ex.ToString();
        }
        finally {
            myConnection.Close();
        }
    
        // Resort the grid for new records
        if (AddingNew) {
    
            DataGrid1.CurrentPageIndex = 0;
            AddingNew = false;
        }
    
        // rebind the grid
        DataGrid1.EditItemIndex = -1;
        BindGrid();
    }
    
    void DataGrid_Cancel(object sender, DataGridCommandEventArgs e) {
    
        // cancel editing
    
        DataGrid1.EditItemIndex = -1;
        BindGrid();
    
        AddingNew = false;
    }
    
    void DataGrid_Delete(object sender, DataGridCommandEventArgs e) {
    
        // delete the selected row
    
        if (!isEditing) {
    
            // the key value for this row is in the DataKeys collection
            string keyValue = (string)DataGrid1.DataKeys[e.Item.ItemIndex];
    
            // TODO: update the Command value for your application
            SqlConnection myConnection = new SqlConnection(ConnectionString);
            SqlCommand DeleteCommand = new SqlCommand("DELETE from authors where au_id='" + keyValue + "'", myConnection);
    
            // execute the command
            myConnection.Open();
            DeleteCommand.ExecuteNonQuery();
            myConnection.Close();
    
            // rebind the grid
            DataGrid1.CurrentPageIndex = 0;
            DataGrid1.EditItemIndex = -1;
            BindGrid();
        }
    }
    
    void DataGrid_Page(object sender, DataGridPageChangedEventArgs e) {
    
        // display a new page of data
    
        if (!isEditing) {
            DataGrid1.EditItemIndex = -1;
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            BindGrid();
        }
    }
    
    void AddNew_Click(Object sender, EventArgs e) {
    
        // add a new row to the end of the data, and set editing mode 'on'
    
        CheckIsEditing("");
    
        if (!isEditing) {
    
            // set the flag so we know to do an insert at Update time
            AddingNew = true;
    
            // add new row to the end of the dataset after binding
    
            // first get the data
            SqlConnection myConnection = new SqlConnection(ConnectionString);
            SqlDataAdapter myCommand = new SqlDataAdapter(SelectCommand, myConnection);
    
            DataSet ds = new DataSet();
            myCommand.Fill(ds);
    
            // add a new blank row to the end of the data
            object[] rowValues = { "", "", "","","","","" };
            ds.Tables[0].Rows.Add(rowValues);
    
            // figure out the EditItemIndex, last record on last page
            int recordCount = ds.Tables[0].Rows.Count;
            if (recordCount > 1)
                recordCount--;
            DataGrid1.CurrentPageIndex = recordCount/DataGrid1.PageSize;
            DataGrid1.EditItemIndex = recordCount%DataGrid1.PageSize;
    
            // databind
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        }
    }
    
    // ---------------------------------------------------------------
    //
    // Helpers Methods:
    //
    
    // property to keep track of whether we are adding a new record,
    // and save it in viewstate between postbacks
    
    protected bool AddingNew {
    
        get {
            object o = ViewState["AddingNew"];
            return (o == null) ? false : (bool)o;
        }
        set {
            ViewState["AddingNew"] = value;
        }
    }
    
    void BindGrid() {
          
             
        DataSet ds = new DataSet();
        myCommand.Fill(ds);
    
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
    }

		</script>
	</HEAD>
	<body>
		<h2>Editable Data Grid
		</h2>
		<hr size="1">
		<form runat="server" ID="Form1">
			<asp:datagrid id="DataGrid1" runat="server" width="80%" CellSpacing="1" GridLines="None" CellPadding="3"
				BackColor="White" ForeColor="Black" OnPageIndexChanged="DataGrid_Page" PageSize="6" AllowPaging="true"
				OnDeleteCommand="DataGrid_Delete" OnCancelCommand="DataGrid_Cancel" OnUpdateCommand="DataGrid_Update"
				OnEditCommand="DataGrid_Edit" OnItemCommand="DataGrid_ItemCommand" DataKeyField="DoCode">
				<HeaderStyle font-bold="True" forecolor="white" backcolor="#4A3C8C"></HeaderStyle>
				<PagerStyle horizontalalign="Right" backcolor="#C6C3C6" mode="NumericPages" font-size="smaller"></PagerStyle>
				<ItemStyle backcolor="#DEDFDE"></ItemStyle>
				<FooterStyle backcolor="#C6C3C6"></FooterStyle>
				<Columns>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"
						ItemStyle-Font-Size="smaller" ItemStyle-Width="10%"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete" ItemStyle-Font-Size="smaller" ItemStyle-Width="10%"></asp:ButtonColumn>
				</Columns>
			</asp:datagrid>
			<br>
			<asp:LinkButton id="LinkButton1" onclick="AddNew_Click" runat="server" Font-Size="smaller" Text="Add new item"></asp:LinkButton>
			<br>
			<br>
			<asp:Label id="Message" runat="server" width="80%" forecolor="red" enableviewstate="false"></asp:Label>
		</form>
	</body>
</HTML>
