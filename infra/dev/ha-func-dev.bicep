targetScope = 'subscription'

resource funcrgeus 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'lphafunctestdeveus'
  location: 'eastus'

}

resource funcrgwus 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'lphafunctestdevwus'
  location: 'westus'

}

resource funcrgweu 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'lphafunctestdevweu'
  location: 'westeurope'
}

module hafuncdeveus '../modules/azure_function.bicep' = {
  scope: funcrgeus
  name: 'ha-func-dev-eus'
  params: {
    appName: 'lphafunctestdev'
  }

}
module hafuncdevwus '../modules/azure_function.bicep' = {
  scope: funcrgwus
  name: 'ha-func-dev-wus'
  params: {
    appName: 'lphafunctestdev'
  }

}
module hafuncdevweu '../modules/azure_function.bicep' = {
  scope: funcrgweu
  name: 'ha-func-dev-weu'
  params: {
    appName: 'lphafunctestdev'
  }

}
