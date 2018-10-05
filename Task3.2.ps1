$NewResourceGroup = "Task3.2"
New-AzureRmResourceGroup -Name $NewResourceGroup -Location "East US"


New-AzureRmResourceGroupDeployment -Name FinalTemplate -ResourceGroupName $NewResourceGroup `
  -TemplateUri https://raw.githubusercontent.com/daniilkorytko/Task3.1/master/FinalTemplate.json