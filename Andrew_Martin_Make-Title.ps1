param($title, [switch]$allcaps)
$propositions=('to', 'a','the', 'at', 'in', 'of', 'with', 'and', 'but', 'or', 'is')

function proper($word){
    $word = $word.tolower()
    (Get-Culture).TextInfo.ToTitleCase($word)
} 
if($allcaps){
    $title.ToUpper()
}
else{
    $words = $title -split ' '
    $fixed = @()
    $firstword = $true
    foreach($word in $words){

        if($firstword){
            proper $word
            $firstword=$false
        }else{
            if($word -in $prepositions){
                $word.ToLower()
            }else{
            $fixed += proper $word
        }
        }
    }
    $fixed -join ' '
}

# #Propositions are still capitialized, and they shouldn't be.
# param([string] $title, [switch] $AllCaps, [string] $propositions)

# function MakeTitle ([string] $title, [switch] $AllCaps) {
#     if($AllCaps){
#         $title.ToUpper()
#      } else{
#          proper $title
#      }}


#  function proper ([string] $title){
#          $propositions=('to', 'a','the', 'at', 'in', 'of', 'with', 'and', 'but', 'or', 'is')
#          [string]$propositions
#          $propositions.GetType()
#          ($title -split ' ' | ForEach-Object{
#              if($_ -notin $propositions){
#                  "$([char]::ToUpper($_[0]))$($_.substring(1).toLower())"
#              }elseif($_[0] -in $propositions){
#                  "$([char]::ToUpper($_[0]))$($_.substring(1).toLower())"
#              }else{
#                  "$([char]::ToUpper($_[0]))$($_.substring(1).toLower())"
#              } 
#          }) -join ' '
#      }

#      MakeTitle $title -AllCaps:$AllCaps

