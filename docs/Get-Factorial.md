---
external help file: PSBackToSchool-help.xml
Module Name: PSBackToSchool
online version:
schema: 2.0.0
---

# Get-Factorial

## SYNOPSIS

Get the factorial of a number.

## SYNTAX

```yaml
Get-Factorial [-Number] <Int32> [<CommonParameters>]
```

## DESCRIPTION

This function will give you the factorial of an integer between 1 and 20.

## EXAMPLES

### Example 1

```powershell
PS C:\>get-factorial 7

5040
```

### Example 2

```powershell
PS C:\> 1..10 | foreach-object { [PSCustomObject]@{Int=$_;Factorial=(Get-Factorial $_)}}


Int Factorial
--- ---------
  1         1
  2         2
  3         6
  4        24
  5       120
  6       720
  7      5040
  8     40320
  9    362880
 10   3628800
```

## PARAMETERS

### -Number

Enter an integer between 1 and 20.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: int

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32

## OUTPUTS

### System.Int32

## NOTES

Learn more about PowerShell: http://jdhitsolutions.com/blog/essential-powershell-resources/

## RELATED LINKS
