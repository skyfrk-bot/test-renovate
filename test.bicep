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

resource storageAccounts3 'Microsoft.Storage/storageAccounts/blobServices@2022-09-01' = [for item in [1,2]: if(true) {
  name: 'example5'
}]

resource symbolicname 'Microsoft.Portal/dashboards@2015-08-01-preview' = {
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
