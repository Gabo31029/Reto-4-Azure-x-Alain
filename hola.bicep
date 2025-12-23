targetScope = 'subscription'

@description('Configuración RG DEV')
param rgDev object

@description('Configuración RG TEST')
param rgTest object

@description('Configuración RG PROD')
param rgProd object

resource rgDevRes 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: rgDev.name
  location: rgDev.location
}

resource rgTestRes 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: rgTest.name
  location: rgTest.location
}

resource rgProdRes 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: rgProd.name
  location: rgProd.location
}
