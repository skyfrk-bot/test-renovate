resource symbolicname 'Microsoft.Kusto/clusters@2022-12-29' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    capacity: int
    name: 'string'
    tier: 'string'
  }
  properties: {
    enableDiskEncryption: bool
    enableStreamingIngest: bool
    optimizedAutoscale: {
      isEnabled: bool
      maximum: int
      minimum: int
      version: int
    }
    trustedExternalTenants: [
      {
        value: 'string'
      }
    ]
    virtualNetworkConfiguration: {
      dataManagementPublicIpId: 'string'
      enginePublicIpId: 'string'
      subnetId: 'string'
    }
  }
  zones: [
    'string'
  ]
}
