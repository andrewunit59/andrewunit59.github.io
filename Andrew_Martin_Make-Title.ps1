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
            $fixed += proper $word
            $firstword=$false
        }else{
            if($word -in $propositions){
                $fixed+=$word.ToLower()
            }else{
            $fixed += proper $word
        }
        }
    }
    $fixed -join ' '
}
