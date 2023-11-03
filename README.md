# Azure-Services-TF


## Configuration Details

### Resource Group

The `azurerm_resource_group` block in the Terraform script creates an Azure Resource Group with the following configuration:

- **Name:** [Provide naming convention details here]
- **Location:** [Provide the location here, e.g., "East US"]

### Express Route Circuit Peering

The `azurerm_express_route_circuit_peering` block creates an Express Route Circuit Peering with the following configurations:

- **Peering Type:** [Specify the peering type here]
- **Express Route Circuit Name:** [Specify the name of the Express Route circuit]
- **Resource Group Name:** [Specify the name of the resource group created earlier]
- **Peer ASN:** [Provide the Autonomous System Number (ASN) of the peer here]
- **Primary IPv4 Address Prefix:** [Specify the primary IPv4 address prefix]
- **Secondary IPv4 Address Prefix:** [Specify the secondary IPv4 address prefix]
- **IPv4 Enabled:** [Specify whether IPv4 is enabled]
- **VLAN ID:** [Specify the VLAN ID]
- **IPv6 Primary Address Prefix:** [Specify the primary IPv6 address prefix]
- **IPv6 Secondary Address Prefix:** [Specify the secondary IPv6 address prefix]
- **IPv6 Enabled:** [Specify whether IPv6 is enabled]

Make sure to replace the placeholder values with your specific configuration details.

## License

This project is licensed under the [License Name] - see the [LICENSE](LICENSE) file for details.
