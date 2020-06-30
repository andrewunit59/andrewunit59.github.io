enum colors{
    red = 0;
    blue = 1;
    green = 2;
}

Class Circle{
    static $Pi=3.1415927
    [double]$Diameter
    [colors]$Color
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

    Class Column:Circle{
        [double]$Height 
        Column([double]$Diameter,[double]$Height):base($Diameter){
            $this.Height=$Height
        }
        static [double] Volume([double]$Diameter,[double]$Height){
            return [Circle]::Area($Diameter) * $Height
        }
        [double]Volume(){
            return $this.Area() * $this.Height
        }

    }