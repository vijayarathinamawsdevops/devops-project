<%@ Page Language="c#" CodeBehind="BillTypeMasG.aspx.cs" SmartNavigation="True" AutoEventWireup="True" Inherits="eKaruvoolam.WebUI.Masters.BillTypeMasG" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.SqlClient" %>
<%@ import Namespace="eKaruvoolam.DataAccess" %>
<%@ import Namespace="eKaruvoolam.BusinessRules" %>
<HTML>
	<HEAD>
		<script runat="server">

    // TODO: update the ConnectionString and Command values for your application
    
    string ConnectionString = "server=sectt;database=ekaruvoolam;user id=karuvoolam;password=khazana";
    string SelectCommand = "SELECT BillType,BillDesc,FormNo,Budget from BillTypeMas";
    string SelectCommand1 = "SELECT BillDesc,FormNo,Budget from BillTypeMas";
    
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
//            //if ( AddingNew )
              //((TextBox)e.Item.Cells[2].Controls[0]).Visible = false;
//             //else
//             // ((TextBox)e.Item.Cells[2].Controls[0]).Visible = true;
      }
    }
    
    void DataGrid_Update(object sender, DataGridCommandEventArgs e) {
    
        // update the database with the new values
    
        // get the edit text boxes
    //    string BillType = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
        string BillDesc = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
        string FormNo = ((TextBox)e.Item.Cells[3].Controls[0]).Text;
        string Budget = ((TextBox)e.Item.Cells[4].Controls[0]).Text;
        
        // TODO: update the Command value for your application
        SqlConnection myConnection = new SqlConnection(ConnectionString);
        SqlCommand UpdateCommand = new SqlCommand();
        UpdateCommand.Connection = myConnection;
    
        if (AddingNew)
            {
//            UpdateCommand.CommandText = "Select max(cast (Billtype as int)) from BillTypeMas";
            int intBillType;
            string strBillType;
            
            intBillType = (int) SqlHelper.ExecuteScalar(myConnection,CommandType.StoredProcedure,"GetLastBillType");
            strBillType = Convert.ToString(intBillType + 1);
            BillType = strBillType.PadLeft(4,'0');
            
            UpdateCommand.CommandText = "INSERT INTO billTypeMas(BillType,BillDesc,FormNo,Budget) VALUES (@BillType,@BillDesc,@FormNo,@Budget)";
            }
        else
     //   BillType = (string) SqlHelper.ExecuteScalar(myConnection,CommandType.StoredProcedure,"GetFindLastBillTypeCode");
         
       //     UpdateCommand.CommandText = "UPDATE billTypeMas SET BillDesc = @BillDesc, FormNo = @FormNo, Budget = @Budget WHERE BillType = @BillType";
       
    
        UpdateCommand.Parameters.Add("@Billtype", SqlDbType.VarChar, 4).Value = "0099";
        UpdateCommand.Parameters.Add("@BillDesc", SqlDbType.VarChar, 30).Value = BillDesc;
        UpdateCommand.Parameters.Add("@FormNo", SqlDbType.VarChar, 6).Value = FormNo;
        UpdateCommand.Parameters.Add("@Budget", SqlDbType.VarChar, 1).Value = Budget;
    
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
            SqlCommand DeleteCommand = new SqlCommand("DELETE from BillTypeMas where BillType='" + keyValue + "'", myConnection);
    
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
            SqlDataAdapter myCommand = new SqlDataAdapter(SelectCommand1, myConnection);
    
            DataSet ds = new DataSet();
            myCommand.Fill(ds);
    
            // add a new blank row to the end of the data
            object[] rowValues = {"", "", "" };
            ds.Tables[0].Rows.Add(rowValues);
    
            // figure out the EditItemIndex, last record on last page
            int recordCount = ds.Tables[0].Rows.Count;
            if (recordCount > 1)
                recordCount--;
            DataGrid1.CurrentPageIndex = recordCount/DataGrid1.PageSize;
            DataGrid1.EditItemIndex = recordCount%DataGrid1.PageSize;
//            DataGrid1.Columns[2].Visible = false;
    
            // databind
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
        } else {
//                    DataGrid1.Columns[2].Visible = true;
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
    
          SqlConnection myConnection = new SqlConnection(ConnectionString);              
          SqlDataAdapter myCommand = new SqlDataAdapter(SelectCommand1, myConnection);                          
    
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
		<form runat="server">
			<asp:datagrid id="DataGrid1" runat="server" width="80%" CellSpacing="1" GridLines="None" CellPadding="3"
				BackColor="White" ForeColor="Black" OnPageIndexChanged="DataGrid_Page" PageSize="6" AllowPaging="True"
				OnCancelCommand="DataGrid_Cancel" OnDeleteCommand="DataGrid_Delete" OnUpdateCommand="DataGrid_Update"
				OnEditCommand="DataGrid_Edit" OnItemCommand="DataGrid_ItemCommand" DataKeyField="BillDesc">
				<FooterStyle BackColor="#C6C3C6"></FooterStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#4A3C8C"></HeaderStyle>
				<PagerStyle Font-Size="Smaller" HorizontalAlign="Right" BackColor="#C6C3C6" Mode="NumericPages"></PagerStyle>
				<ItemStyle BackColor="#DEDFDE"></ItemStyle>
				<Columns>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit">
						<ItemStyle Font-Size="Smaller" Width="10%"></ItemStyle>
					</asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
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
