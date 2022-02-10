 

function chkbadchar(obj) {
    var tempdata = obj.value;
    var mySplitResult = tempdata.split(" ");
    var myCars = new Array("--", ";--",
//                ";",
                "/*", "*/", "._",
                                 "char", "nchar", "varchar", "nvarchar", "alter",
                                "begin", "cast", "create", "cursor", "declare", "delete",
                               "drop", "end",
//                                "or",
                                "exec", "execute",
                                "fetch", "insert",
                                "kill",
//                                "open",
                                 "select", "sys", "sysobjects", "syscolumns",
                                "table", "update", "*",
                                "'",
                                "shutdown", "shut", "iisstop", "iisrestart");
    for (var i = 0; i < mySplitResult.length; i++) {
        for (var j = 0; j < myCars.length; j++) {
            if (mySplitResult[i] == myCars[j]) {
                alert("Enter Valid input");

                obj.value = "";
            }
        }
    }
}





function numeralsOnly(evt) {
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("Enter only number in this field.");
        return false;
    }
    return true;
} 