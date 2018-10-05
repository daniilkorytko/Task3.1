$NewResourceGroup = "Task3.1"
New-AzureRmResourceGroup -Name $NewResourceGroup -Location "East US"



New-AzureRmResourceGroupDeployment -Name Task3.Net -ResourceGroupName $NewResourceGroup `
  -TemplateUri https://raw.githubusercontent.com/daniilkorytko/Task3.1/master/VNet.json `
  -TemplateParameterUri https://raw.githubusercontent.com/daniilkorytko/Task3.1/master/VNetParametr.json

New-AzureRmResourceGroupDeployment -ResourceGroupName $NewResourceGroup `
  -TemplateUri https://raw.githubusercontent.com/daniilkorytko/Task3.1/master/Storage.json `
  -TemplateParameterUri https://raw.githubusercontent.com/daniilkorytko/Task3.1/master/StorageParametrs.json
