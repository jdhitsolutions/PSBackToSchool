---
external help file: PSBackToSchool-help.xml
Module Name: PSBackToSchool
online version: https://www.gigacalculator.com/calculators/volume-of-sphere-calculator.php
schema: 2.0.0
---

# Get-SphereVolume

## SYNOPSIS

Get the volume of a sphere.

## SYNTAX

```yaml
Get-SphereVolume [-Diameter] <Double> [[-Decimal] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Calculate the volume of a sphere with a given diameter. You can also specify the number of decimal places for the result.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-SphereVolume -Diameter 3.45 -Decimal 4


Diameter Radius  Volume Formatted
-------- ------  ------ ---------
    3.45  1.725 21.5009 21.5009 cubic units
```

## PARAMETERS

### -Decimal

Specify the number of decimal places for the area.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 2
Accept pipeline input: False
Accept wildcard characters: False
```

### -Diameter

Enter a sphere diameter between 1 and 100.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

Learn more about PowerShell: http://jdhitsolutions.com/blog/essential-powershell-resources/

## RELATED LINKS

[https://www.gigacalculator.com/calculators/volume-of-sphere-calculator.php](https://www.gigacalculator.com/calculators/volume-of-sphere-calculator.php)

[Get-CylinderVolume](Get-CylinderVolume.md)

[Get-CircleArea](Get-CircleArea.md)
