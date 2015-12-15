## Synopsis

Altered htmlTable function with IRCDA styling and extra html tags. Also, adds different ways to assign row names and row groups and treats factors like characters. Adds a generic class for table's as well as data frames.

## Code Example

sample_tables.R gives some working examples.

## Motivation

Provides htmlTable functionality with IRCDA styling.

## Installation

sample_tables.R provides instructions to source the function from github, or just download the file

## Examples 

<table>
<thead class=tirc_head>
<tr>
<th style='border-top: 2px solid grey;'></th>
<th colspan='2' style='border-bottom: 1px solid grey; border-top: 2px solid grey;'>shape</th>
</tr>
<tr>
<th style='border-bottom: 1px solid grey; '>col</th>
<th style='border-bottom: 1px solid grey; text-align: left;'>Round</th>
<th style='border-bottom: 1px solid grey; text-align: left;'>Square</th>
</tr>
</thead><tbody>
<tr >
<td style='text-align: left;'>Green</td>
<td style='text-align: left;'>25</td>
<td style='text-align: left;'>20</td>
</tr>
<tr >
<td style='border-bottom: 2px solid grey; text-align: left;'>Red</td>
<td style='border-bottom: 2px solid grey; text-align: left;'>33</td>
<td style='border-bottom: 2px solid grey; text-align: left;'>22</td>
</tr>
</tbody>
</table>

<table>
<thead class=tirc_head>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey;'>&nbsp;</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: left;'>Red</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: left;'>Green</th>
</tr>
</thead><tbody>
<tr><td class='rgHead' colspan='3' style='font-weight: bold;'>Early</td></tr>
<tr >
<td style='padding-left:16px; text-align: left;'>A</td>
<td style='text-align: left;'>10 (40%)</td>
<td style='text-align: left;'>20 (50%)</td>
</tr>
<tr >
<td class='subLast' style='padding-left:16px; text-align: left;'>B</td>
<td class='subLast' style='text-align: left;'>10 (40%)</td>
<td class='subLast' style='text-align: left;'>16 (40%)</td>
</tr>
<tr><td class='rgHead' colspan='3' style='font-weight: bold; '>Late</td></tr>
<tr >
<td class='subLast' style='padding-left:16px; border-bottom: 2px solid grey; text-align: left;'>C</td>
<td class='subLast' style='border-bottom: 2px solid grey; text-align: left;'>5 (20%)</td>
<td class='subLast' style='border-bottom: 2px solid grey; text-align: left;'>4 (10%)</td>
</tr>
</tbody>
</table>