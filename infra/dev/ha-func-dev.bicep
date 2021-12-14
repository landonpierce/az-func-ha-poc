targetScope = 'subscription'

resource funcrg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'lphafunctestdev'
  location: 'eastus'
  
}


module hafuncdev '../modules/azure_function.bicep' = {
  scope: funcrg
  name: 'ha-func-dev'
  params: {
    appName: 'lphafunctestdev'
  }

}
