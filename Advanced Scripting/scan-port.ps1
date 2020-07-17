function Scan-Port {
    # Define Parameters
    [CmdletBinding()]
    param (
        [Parameter (position = 0, mandatory = $true)]
        $Target,
        [parameter (position = 1, mandatory = $true)]
        $Port,
        [parameter (position = 2, mandatory = $false)]
        $Timeout = 20
    )
    #State the tracking variable
    $requestCallback = $null
    $state = $null
    #Handles the range of ports
    if ($port -like "*-*"){
        # Split the [string] array into parts.
        $porttmp = $($port -split "(-)")

        [int]$beginPort = $porttmp[0]
        [int]$endPort = $porttmp[2]

        # Re-assemble the port range array into a powershell array
        $portarray = $beginPort..$endPort
        
        # add the 'else' condition to the if statement
    } else {
        $portarray = $port
    }

    foreach ($port in $($portarray)) {

    }
    $client = New-Object System.Net.Sockets.TcpClient
    $beginConnect = $client.BeginConnect(($target, $port, $requestCallback, $state)
    Start-Sleep -milli $timeOut

    if ($client.Connected) {
        $open = $true; [pscustomobject]@{host = $Target; port = $port; open = $open}
    } else {
        $open = $false
    }
    $client.Close()
}