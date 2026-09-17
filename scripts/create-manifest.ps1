param(
	# Name of the manifest
	[Parameter(Mandatory = $true)]
	[Alias('n')]
	[string]$Name,

	# Description of the app that the manifest is for
	[Parameter(Mandatory = $true)]
	[Alias('d')]
	[string]$Description,

	# Homepage of the app
	[Parameter(Mandatory = $false)]
	[string]$Homepage
)

# This script is assumed to be in the same parent folder as the "bucket" folder
$bucketdir = Resolve-Path (Join-Path -Path $PSScriptRoot -ChildPath '../bucket') -ErrorAction Stop;

$manifest = [ordered]@{
	'version'     = '0.0.0';
	'description' = $Description;
	'homepage'    = '';
	'license'     = @{ 'identifier' = 'Unknown'; };
};
if ($PSBoundParameters.ContainsKey('Homepage')) { $manifest['homepage'] = $Homepage; };

$manifest = ConvertTo-Json -InputObject $manifest -Depth 99;

$fp = Join-Path -Path $bucketdir -ChildPath "$Name.json";

Set-Content -Path $fp -Value $manifest -Force;
