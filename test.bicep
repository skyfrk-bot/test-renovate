resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'example'
}

resource storageAccount2 'Microsoft.Storage/storageAccounts@2019-04-01' existing = {
  name: 'example'
}

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'example2'

  resource service 'fileServices' = {
    name: 'default'

    resource share 'shares' = {
      name: 'exampleshare'
    }
  }
}

resource storageAccount3 'Microsoft.Storage/storageAccounts@2021-04-01' = if (true) {
  name: 'example3'
}

resource storageAccounts 'Microsoft.Storage/storageAccounts@2021-04-01-preview' = [for item in [1,2]: {
  name: 'example4'
}]

resource storageAccounts3 'Microsoft.Storage/storageAccounts/blobServices@2021-01-01' = [for item in [1,2]: if(true) {
  name: 'example5'
}]

resource symbolicname 'Microsoft.Portal/dashboards@2020-09-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    lenses: {}
    metadata: {}
  }
}

module storageAccount '../storageAccount.bicep' = {
  name: 'example'
}

module storageAccount '../storageAccount.json' = {
  name: 'example'
}

module hw 'br/public:samples/hello-world:1.0.2' = {
  name: 'helloWorld'
  params: {
    name: 'John Dole'
  }
}

module stgModule 'br:exampleregistry.azurecr.io/bicep/modules/storage:v1' = {
  name: 'storageDeploy'
  params: {
    storagePrefix: 'examplestg1'
  }
}

module stgModule 'ts/ContosoSpecs:storageSpec:2.0' = {
  name: 'storageDeploy'
  params: {
    storagePrefix: 'examplestg1'
  }
}

module stgModule '../storageAccount.bicep' = [for item in collection: {
  name: 'example'
}]

module stgModule '../storageAccount.bicep' = if (true) {
  name: 'example'
}

module stgModule '../storageAccount.bicep' = [for item in collection: if(true) {
  name: 'example'
}]
