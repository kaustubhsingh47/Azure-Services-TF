# Azure-Services-TF


## Configuration Details

### Resource Group

The `azurerm_resource_group` block creates an Azure Resource Group with the following configuration:

- **Name:** exampleResourceGroup
- **Location:** [Specify the location where the Azure resources will be created]

### Virtual WAN

The `azurerm_virtual_wan` block creates an Azure Virtual WAN with the following configuration:

- **Name:** [Specify the name of the Azure Virtual WAN]
- **Resource Group Name:** exampleResourceGroup
- **Location:** [Specify the location of the Azure Virtual WAN]

### Virtual Hub

The `azurerm_virtual_hub` block creates an Azure Virtual Hub with the following configuration:

- **Name:** [Specify the name of the Azure Virtual Hub]
- **Resource Group Name:** exampleResourceGroup
- **Location:** [Specify the location of the Azure Virtual Hub]
- **Virtual WAN ID:** [Specify the ID of the Virtual WAN]
- **Address Prefix:** [Specify the address prefix for the Virtual Hub]

### Express Route Gateway

The `azurerm_express_route_gateway` block creates an Express Route Gateway with the following configuration:

- **Name:** [Specify the name of the Express Route Gateway]
- **Resource Group Name:** exampleResourceGroup
- **Location:** [Specify the location of the Express Route Gateway]
- **Virtual Hub ID:** [Specify the ID of the Virtual Hub]
- **Scale Units:** [Specify the number of scale units for the Express Route Gateway]

### Express Route Connection

The `azurerm_express_route_connection` block creates an Express Route Connection with the following configuration:

- **Name:** [Specify the name of the Express Route Connection]
- **Express Route Gateway ID:** [Specify the ID of the Express Route Gateway]
- **Express Route Circuit Peering ID:** [Specify the ID of the Express Route Circuit Peering]

Make sure to replace the placeholder values with your specific configuration details.

## License

This project is licensed under the [License Name] - see the [LICENSE](LICENSE) file for details.
