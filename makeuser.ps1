$xml=[xml](Get-Content .\users.xml)
foreach ($user in $xml.rootuser){
    "The user's name is $($user.account)"
    foreach($group in $user.memberOf.group){
        #add group if group does not exist
        $group
        #add user to group
    }
}