// param location string = resourceGroup().location

// resource storageAccount 'Microsoft.Storage/storageAccounts@2021-01-01' = {
//   name: 'test'
//   kind: 'StorageV2'
//   sku: {
//     name: 'Standard_LRS'
//   }
//   location: location
// }

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = if(0 == 1) {
  name: 'test'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  location: location
}

resource storageAccount2 'Microsoft.Storage/storageAccounts@2022-09-01' existing = {
  name: 'test'
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = [for name in ['test', 'test2']: if(42 == 'the answer') {
  name: name
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  location: location
}]

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = [for name in ['test', 'test2']: {
  name: name
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  location: location
}]

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'test'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  location: location

  resource blobServices 'blobServices' = {
    name: 'default'
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'test'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  location: location

  resource blobServices 'blobServices@2021-01-01' = {
    name: 'default'
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'test'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  location: location
}

resource storageAccount 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-01-01' = {
  name: 'parent/child/this'
}
