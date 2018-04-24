# iOSCertificateTool

A easy tool to get some information of p12 and mobileprovision

## Dependecies

* `XYP12Reader.framework`
* `XYMobileprovisionReader.framework`

## Usage

1. To get the p12 information 
	
	* argument 0 : p12 file path
	* argument 1 : the password

	`./iOSCertificateTool some.p12 123`

2. To get the mobileprovision information

	* argument 0 : mobileprovision file path
	
	`./iOSCertificateTool some.mobileprovision `