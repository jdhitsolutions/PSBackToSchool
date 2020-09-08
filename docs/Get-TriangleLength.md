---
external help file: PSBackToSchool-help.xml
Module Name: PSBackToSchool
online version: 
schema: 2.0.0
---

# Get-TriangleLength

## SYNOPSIS

Calculate the missing length of a right triangle.

## SYNTAX

```yaml
Get-TriangleLength [[-A] <Double>] [[-B] <Double>] [[-C] <Double>] [[-Decimal] <Int32>] [<CommonParameters>]
```

## DESCRIPTION

Use this command to calculate the missing side of a right triangle. This function uses the traditional A and B for the sides and C for the hypotenuse. You can also specify the number of decimal places for the result.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-TriangleLength -a 3 -B 4


SideA SideB Hypotenuse
----- ----- ----------
    3     4          5
```

### Example 2

```powershell
PS C:\> Get-TriangleLength -C 5.6 -A 2.5 -Decimal 6


SideA    SideB Hypotenuse
-----    ----- ----------
  2.5 5.010988        5.6
```

## PARAMETERS

### -A

Side A of a right triangle.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -B

Side B of a right triangle.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -C

Side C, or the hypotenuse, of a right triangle.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Decimal

Specify the number of decimal places for the area.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 2
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

[Get-CircleArea](Get-CircleArea.md)
