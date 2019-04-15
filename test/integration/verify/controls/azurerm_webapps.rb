resource_group = attribute('resource_group', default: nil)

control 'azurerm_webapps' do
  describe azurerm_webapps(resource_group: resource_group) do
    it                          { should exist }
    its('names')                { should be_an(Array) }
  end
end
