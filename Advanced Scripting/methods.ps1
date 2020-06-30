Class Circle{
    static $Pi=3.1415927
    [double]$Diameter
    $Color
    Circle(){}
    Circle([double]$Diameter){
        #Store the value passed to the constructor in the property
        $this.Diameter=$Diameter
    }
    static [double] Area([double] $Diameter){
        return [circle]:: Pi * [math]::pow($Diameter/2,2)
    }
    [double]Area(){
        return [Circle]::Area($this.Diameter)
    }
    static [double] Circumference([double]$Diameter){
        return [Circle]:: Pi * $Diameter
    }
}

$c=[circle]::new()
$c




