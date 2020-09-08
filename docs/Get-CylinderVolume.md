---
external help file: PSBackToSchool-help.xml
Module Name: PSBackToSchool
online version: https://www.gigacalculator.com/calculators/volume-of-cylinder-calculator.php
schema: 2.0.0
---

# Get-CylinderVolume

## SYNOPSIS

Get the volume of a cylinder.

## SYNTAX

```yaml
Get-CylinderVolume [-Diameter] <Double> [-Height] <Double> [[-Decimal] <Int32>] [[-Unit] <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Get the volume of a cylinder with a given diameter and height. You have an option to specify the number of decimal places for the volume as well as the unit of measurement.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-CylinderVolume -Diameter 7.2 -Height 11.4 -Decimal 6

Form: Cylinder

Diameter     Radius   Volume
--------     ------   ------
7.2            3.6    464.151465 cm³
```

The default behavior is a formatted object.

### Example 2

```powershell
PS C:\> Get-CylinderVolume -Diameter 4 -Height 5 -Unit ft | Select-Object -expandProperty Formatted
62.83 ft³
```

## PARAMETERS

### -Decimal

Specify the number of decimal places for the area.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Diameter

Enter a cylinder diameter between 1 and 100.

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

### -Height

Enter a cylinder height between 1 and 100.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unit

Select a unit of measurement.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: mm, cm, meters, km, in, ft, yds, mi

Required: False
Position: 3
Default value: cm
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### PSCylinder

## NOTES

Learn more about PowerShell: http://jdhitsolutions.com/blog/essential-powershell-resources/

## RELATED LINKS

[https://www.gigacalculator.com/calculators/volume-of-cylinder-calculator.php](https://www.gigacalculator.com/calculators/volume-of-cylinder-calculator.php)

[Get-SphereVolume](Get-SphereVolume.md)
