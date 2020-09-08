Function Get-TriangleLength {
    [cmdletbinding()]
    Param(
        [ValidateRange(1, 10)]
        [double]$A,
        [ValidateRange(1, 10)]
        [double]$B,
        [ValidateRange(1, 200)]
        [double]$C,
        [ValidateRange(2, 8)]
        [int]$Decimal = 2
    )

    Write-Verbose $($myinvocation.mycommand)
    $PSBoundParameters | Out-String | Write-Verbose
    #make sure we have 2 parameters
    $sides = $PSBoundParameters.GetEnumerator() | Where-Object { $_.key -match "^[abcABC]$" }
    if ($sides.count -ne 2) {
        Write-Warning "You need to specify at least 2 sides of the triangle"
    }
    else {
        #continue
        if ($A -AND $B) {
            Write-Verbose "Solving for C"
            $q = ($a * $a) + ($b * $b)
            $C = [math]::round([math]::sqrt($q), $Decimal)
        }
        elseif ($A -AND $C) {
            Write-Verbose "Solving for B"
            #let's use the MATH class
            $q = [math]::pow($C, 2) - [math]::pow($A, 2)
            $B = [math]::round([math]::sqrt($q), $Decimal)
        }
        elseif ($B -AND $C) {
            Write-Verbose "Solving for A"
            $q = [math]::pow($C, 2) - [math]::pow($B, 2)
            $A = [math]::round([math]::sqrt($q), $Decimal)
        }

        #write a custom object to the pipeline
        [pscustomobject]@{
            PSTypeName = "PSTriangle"
            SideA      = $A
            SideB      = $B
            Hypotenuse = $C
        }
    } #else continue

}

Function Get-CircleArea {
    [cmdletbinding()]
    Param(
        [parameter(Mandatory, HelpMessage = "Enter a circle diameter between 1 and 10")]
        [ValidateRange(1, 10)]
        [double]$Diameter,
        [ValidateRange(2, 8)]
        [int]$Decimal = 2
    )

    Write-Verbose $($myinvocation.mycommand)
    Write-Verbose "Calculating area with a diameter of $Diameter"
    $pi = [math]::pi
    $r = $Diameter / 2
    Write-Verbose "Using a radius of $r"
    $area = $pi * ([math]::pow($r, 2))
    Write-Verbose "Raw area = $area"
    [pscustomobject]@{
        PSTypename = "PSCircleArea"
        Diameter   = $Diameter
        Radius     = $r
        Area       = [math]::round($area, $decimal)
    }

}

Function Get-Factorial {
    [cmdletbinding()]
    [alias("gf")]
    [outputType([INT32])]
    Param(
        [Parameter(Mandatory, ValueFromPipeline, HelpMessage = "Enter a number between 1 and 20")]
        [alias("int")]
        [int]$Number
    )

    Begin {
        Write-Verbose "Starting $($myinvocation.mycommand)"
    }
    Process {
        Write-Verbose "Calculating factorial of $number"

        1..$Number | ForEach-Object -begin { $r = 1 } -process { $r *= $_ } -end { $r }
    }
    End {
        Write-Verbose "Ending $($myinvocation.mycommand)"
    }
}

Function Get-SphereVolume {
    [cmdletbinding(HelpURI = "https://www.gigacalculator.com/calculators/volume-of-sphere-calculator.php")]
    Param(
        [parameter(Mandatory, HelpMessage = "Enter a sphere diameter between 1 and 100")]
        [ValidateRange(1, 100)]
        [double]$Diameter,
        [ValidateRange(2, 8)]
        [int]$Decimal = 2
    )

    Write-Verbose "Starting $($myinvocation.mycommand)"
    Write-Verbose "Calculating volume with a diameter of $Diameter"
    $pi = [math]::pi
    $r = $Diameter / 2
    Write-Verbose "Using a radius of $r"
    $vol = 4 / 3 * $pi * ([math]::pow($r, 3))

    Write-Verbose "Raw volume = $vol"

    [pscustomobject]@{
        PSTypename = "PSSphereVolume"
        Diameter   = $Diameter
        Radius     = $r
        Volume     = [math]::round($vol, $decimal)
        Formatted  = "{0:n$Decimal} cubic units" -f $vol
    }
    Write-Verbose "Ending $($myinvocation.mycommand)"
}

Function Get-CylinderVolume {
    [cmdletbinding(HelpURI = "https://www.gigacalculator.com/calculators/volume-of-cylinder-calculator.php")]
    Param(
        [parameter(Mandatory, HelpMessage = "Enter a cylinder diameter between 1 and 100")]
        [ValidateRange(1, 100)]
        [double]$Diameter,
        [parameter(Mandatory, HelpMessage = "Enter a cylinder height between 1 and 100")]
        [ValidateRange(1, 100)]
        [double]$Height,
        [ValidateRange(2, 8)]
        [int]$Decimal = 2,
        [Parameter(HelpMessage = "Select a unit of measurement")]
        [ValidateSet("mm", "cm", "meters", "km", "in", "ft", "yds", "mi")]
        [string]$Unit = "cm"
    )

    Write-Verbose "Starting $($myinvocation.mycommand)"
    Write-Verbose "Calculating volume with a diameter of $Diameter"
    $pi = [math]::pi
    $r = $Diameter / 2
    Write-Verbose "Using a radius of $r"

    $vol = $height * $pi * ([math]::pow($r, 2))

    Write-Verbose "Raw volume = $vol"

    [pscustomobject]@{
        PSTypename = "PSCylinderVolume"
        Form       = "Cylinder"
        Diameter   = $Diameter
        Radius     = $r
        Volume     = [math]::round($vol, $decimal)
        Unit       = $Unit
        Formatted  = "{0:n$Decimal} $unit{1}" -f $vol, [char]0x00b3
    }
    Write-Verbose "Ending $($myinvocation.mycommand)"
}