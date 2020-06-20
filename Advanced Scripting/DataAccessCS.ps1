$csb=[System.Data.Odbc.OdbcConnectionStringBuilder]::new()
$csb.Driver='Microsoft Access Driver (*.mdb, *.accdb)'
$csb.add('dbq','C:\Users\andre\psfiles\data\gems.csv')
$da=[System.Data.Odbc.OdbcDataAdapter]::new('select * from gem',$csb.ConnectionString)
$ds=[System.Data.DataSet]::new($da)
$da.fill($ds)
$ds.Tables[0]|ft