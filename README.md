# active_directory

This cookbook configures Active Directory on Windows Server 2012R2.

Requires a data bag for configuration values:

## Create Chef data bag
`$ knife data bag create active_directory`

## Create Domain data bag data file
Create a file like the following:
```
{
  "id": "domain",
  "domain_name": "corp.example.com",
  "domain_user": "xxxxxx",
  "domain_password": "xxxxxxx",
  "ou": "OU=Computers,OU=corp,DC=corp,DC=example,DC=com",
  "dns": [
    "10.31.51.163",
    "10.31.36.234"
  ]
}
```

## Update Chef data bag with item from file
`$ knife data bag from file active_directory FILENAME`
