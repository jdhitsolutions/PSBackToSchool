---
external help file: PSBackToSchool-help.xml
Module Name: PSBackToSchool
online version:
schema: 2.0.0
---

# Get-CircleArea

## SYNOPSIS

Get the area of a circle.

## SYNTAX

```yaml
Get-CircleArea [-Diameter] <Double> [[-Decimal] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Get the area of a circle with a given diameter. You have an option to specify the number of decimal places.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-CircleArea -Diameter 5.25


Diameter Radius  Area
-------- ------  ----
    5.25  2.625 21.65
```

### Example 2

```powershell
PS C:\> Get-CircleArea -Diameter 5.25 -decimal 4


Diameter Radius    Area
-------- ------    ----
    5.25  2.625 21.6475
```

Repeat the calculation but display the result to 4 decimal places.

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

Enter a circle diameter between 1 and 10.

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

[Get-SphereVolume](Get-SphereVolume.md)
