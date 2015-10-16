(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.2' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     10957,        253]
NotebookOptionsPosition[     11506,        248]
NotebookOutlinePosition[     11952,        268]
CellTagsIndexPosition[     11909,        265]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 DynamicModuleBox[{$CellContext`TeXIn$$ = $Failed, $CellContext`LaTeXCmd$$ = 
  "/usr/local/texlive/2015/bin/x86_64-darwin/latex"}, 
  PanelBox[
   TagBox[GridBox[{
      {
       TemplateBox[{"\"LaTeX Path: \"",InputFieldBox[
          Dynamic[$CellContext`LaTeXCmd$$], String, ImageSize -> {400, 20}]},
        "RowDefault"], 
       TemplateBox[{Dynamic[$CellContext`LaTeXCmd$$],"Open",All},
        "FileNameSetterBoxes"]},
      {
       TemplateBox[{"\"      TeX File: \"",InputFieldBox[
          Dynamic[$CellContext`TeXIn$$], String, ImageSize -> {400, 20}]},
        "RowDefault"], 
       TemplateBox[{Dynamic[$CellContext`TeXIn$$],"Open",All},
        "FileNameSetterBoxes"]},
      {
       ButtonBox["\<\"Count Words\"\>",
        Appearance->Automatic,
        ButtonFunction:>$CellContext`ApsCount[$CellContext`TeXIn$$],
        Evaluator->Automatic,
        Method->"Preemptive"], "\[SpanFromLeft]"}
     },
     AutoDelete->False,
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Grid"]],
  DynamicModuleValues:>{},
  Initialization:>(
   SetOptions[$FrontEnd, DynamicEvaluationTimeout -> 
     Infinity]; $CellContext`TeXIn$$ = 
    NotebookDirectory[]; $CellContext`LaTeXCmd$$ = 
    "/usr/local/texlive/2015/bin/x86_64-darwin/latex"; $CellContext`ApsCount[
      Pattern[$CellContext`texFile, 
       Blank[]]] := 
    Module[{$CellContext`tex, $CellContext`envList, $CellContext`cmdList, \
$CellContext`cmd, $CellContext`eqList, $CellContext`eqList2, \
$CellContext`eqnList, $CellContext`eqnList2, $CellContext`tbList, \
$CellContext`tbList2, $CellContext`fgList, $CellContext`fgList2, \
$CellContext`epsList, $CellContext`cc, $CellContext`wc, $CellContext`tbc, \
$CellContext`eqc, $CellContext`fgc}, If[
        Not[
         And[
          FileExistsQ[$CellContext`texFile], 
          Not[
           DirectoryQ[$CellContext`texFile]]]], 
        MessageDialog["TeX File Not Exist!"]; 
        Quit[]]; $CellContext`envList = {
        "equation", "equation*", "eqnarray", "eqnarray*", "table", "table*", 
         "figure", 
         "figure*"}; $CellContext`eqList = ($CellContext`eqnList = \
($CellContext`tbList = ($CellContext`fgList = ($CellContext`eqList2 = \
($CellContext`eqnList2 = ($CellContext`tbList2 = ($CellContext`fgList2 = \
{}))))))); $CellContext`tex = 
       Import[$CellContext`texFile, "Text"]; $CellContext`tex = 
       StringReplace[$CellContext`tex, {
         "\\maketitle" -> "%\\maketitle", "\\documentclass[" -> 
          "\\documentclass[nofootinbib,", "\\begin{thebibliography}" -> 
          "\\end{document}\n\\begin{thebibliography}", 
          "\\begin{acknowledgments}" -> 
          "\\end{document}\n\\begin{acknowledgments}", 
          "\\begin{acknowledgements}" -> 
          "\\end{document}\n\\begin{acknowledgements}", "\\includegraphics[" -> 
          "%\\includegraphics[", RegularExpression["%.+"] -> 
          ""}]; $CellContext`cmdList = Flatten[
         Table[{
           StringJoin["\\begin{", $CellContext`env, "}"], 
           StringJoin[
           "\\end{", $CellContext`env, 
            "}"]}, {$CellContext`env, $CellContext`envList}]]; Scan[
        Function[$CellContext`cmd0, $CellContext`cmd = 
          StringCases[$CellContext`tex, StringExpression["\\newcommand{\\", 
              Pattern[$CellContext`x, 
               Repeated[LetterCharacter]], 
              StringJoin["}{", $CellContext`cmd0, "}"]] :> 
            StringJoin["\\", $CellContext`x]]; 
         If[Length[$CellContext`cmd] > 
           0, $CellContext`cmd = First[$CellContext`cmd]; $CellContext`tex = 
            StringReplace[$CellContext`tex, 
              StringJoin[
               "\\newcommand{", $CellContext`cmd, "}{", $CellContext`cmd0, 
                "}"] :> ""]; $CellContext`tex = 
            StringReplace[$CellContext`tex, StringExpression[
                StringJoin[$CellContext`cmd, ""], 
                Pattern[$CellContext`b, 
                 Alternatives[WordBoundary, DigitCharacter]]] :> 
              StringJoin[$CellContext`cmd0, $CellContext`b]]; 
           Null]], $CellContext`cmdList]; $CellContext`tex = 
       StringReplace[$CellContext`tex, {
         RegularExpression[
           "\\\\begin\\{equation\\}((.|\\s)*?)\\\\end\\{equation\\}"] :> (
           AppendTo[$CellContext`eqList, "$1"]; ""), 
          RegularExpression[
           "\\\\begin\\{equation\\*\\}((.|\\s)*?)\\\\end\\{equation\\*\\}"] :> \
(AppendTo[$CellContext`eqList2, "$1"]; ""), 
          RegularExpression[
           "\\\\begin\\{eqnarray\\}((.|\\s)*?)\\\\end\\{eqnarray\\}"] :> (
           AppendTo[$CellContext`eqnList, "$1"]; ""), 
          RegularExpression[
           "\\\\begin\\{eqnarray\\*\\}((.|\\s)*?)\\\\end\\{eqnarray\\*\\}"] :> \
(AppendTo[$CellContext`eqnList2, "$1"]; ""), 
          RegularExpression[
           "(\\\\begin\\{table\\}((.|\\s)*?))\\\\begin\\{tabular\\}((.|\\s)*?)\
\\\\end\\{tabular\\}"] :> (AppendTo[$CellContext`tbList, "$4"]; "$1"), 
          RegularExpression[
           "(\\\\begin\\{table*\\}((.|\\s)*?))\\\\begin\\{tabular\\}((.|\\s)*?\
)\\\\end\\{tabular\\}"] :> (AppendTo[$CellContext`tbList2, "$4"]; "$1"), 
          RegularExpression[
           "\\\\begin\\{figure\\}((.|\\s)*?)\\\\end\\{figure\\}"] :> (
           AppendTo[$CellContext`fgList, "$1"]; "$0"), 
          RegularExpression[
           "\\\\begin\\{figure\\*\\}((.|\\s)*?)\\\\end\\{figure\\*\\}"] :> (
           AppendTo[$CellContext`fgList2, "$1"]; "$0")}]; SetDirectory[
        ToFileName[{
          NotebookDirectory[], "wordcount"}]]; 
      Export["main.tex", $CellContext`tex, "Text"]; 
      Run["echo main.tex | /usr/local/texlive/2015/bin/x86_64-darwin/latex \
wordcount.tex"]; $CellContext`wc = StringTrim[
         RunProcess[{"grep", "-c", "3[.]0863[35]", "wordcount.log"}, 
          "StandardOutput"]]; $CellContext`cc = StringTrim[
         RunProcess[{"grep", "-c", "3[.]0863[23]", "wordcount.log"}, 
          "StandardOutput"]]; DeleteFile["main.tex"]; 
      DeleteFile["wordcount.log"]; 
      ResetDirectory[]; $CellContext`eqc = (Length[$CellContext`eqList] + 
          Apply[Plus, 
            Table[1 + Length[
               StringCases[$CellContext`eqn, 
                RegularExpression[
                "\\\\\\\\"]]], {$CellContext`eqn, $CellContext`eqnList}]]) 
         16 + (Length[$CellContext`eqList2] + Apply[Plus, 
            Table[1 + Length[
               StringCases[$CellContext`eqn, 
                RegularExpression[
                "\\\\\\\\"]]], {$CellContext`eqn, $CellContext`eqnList2}]]) 
         32; $CellContext`tbc = Apply[Plus, 
          Table[13 + 6.5 (1 + Length[
               StringCases[$CellContext`tb, 
                RegularExpression[
                "\\\\\\\\"]]]), {$CellContext`tb, $CellContext`tbList}]] + 
        Apply[Plus, 
          Table[26 + 13 (1 + Length[
               StringCases[$CellContext`tb, 
                RegularExpression[
                "\\\\\\\\"]]]), {$CellContext`tb, $CellContext`tbList2}]]; 
      SetDirectory[
        DirectoryName[$CellContext`texFile]]; Off[
        MessageName[Import, "nffil"]]; $CellContext`fgList = Flatten[
         Table[
          StringCases[$CellContext`fg, 
           
           StringCases[$CellContext`fg, 
            RegularExpression["\\\\includegraphics(\\[.+?\\])?\\{(.+?)\\}"] :> 
            "$2"]], {$CellContext`fg, $CellContext`fgList}]]; \
$CellContext`fgList = Table[
         If[
          Not[
           FileExistsQ[$CellContext`fg]], 
          
          StringJoin[$CellContext`fg, 
           ".eps"], $CellContext`fg], {$CellContext`fg, $CellContext`fgList}]; \
$CellContext`fgList = Table[
         If[Import[$CellContext`fg] =!= $Failed, 
          ReplaceAll[ImageSize, 
           Options[
            Import[$CellContext`fg]]], {
           $CellContext`Width[$CellContext`fg], 
           $CellContext`Height[$CellContext`fg]}], {$CellContext`fg, \
$CellContext`fgList}]; $CellContext`fgList = 
       Table[20 + 
         150/(Part[$CellContext`fg, 1]/
          Part[$CellContext`fg, 
           2]), {$CellContext`fg, $CellContext`fgList}]; $CellContext`fgList2 = 
       Flatten[
         Table[
          StringCases[$CellContext`fg, 
           
           StringCases[$CellContext`fg, 
            RegularExpression["\\\\includegraphics(\\[.+?\\])?\\{(.+?)\\}"] :> 
            "$2"]], {$CellContext`fg, $CellContext`fgList2}]]; \
$CellContext`fgList2 = Table[
         If[
          Not[
           FileExistsQ[$CellContext`fg]], 
          
          StringJoin[$CellContext`fg, 
           ".eps"], $CellContext`fg], {$CellContext`fg, \
$CellContext`fgList2}]; $CellContext`fgList2 = Table[
         If[Import[$CellContext`fg] =!= $Failed, 
          ReplaceAll[ImageSize, 
           Options[
            Import[$CellContext`fg]]], {
           $CellContext`Width[$CellContext`fg], 
           $CellContext`Height[$CellContext`fg]}], {$CellContext`fg, \
$CellContext`fgList2}]; $CellContext`fgList2 = 
       Table[20 + 
         150/(Part[$CellContext`fg, 1]/
          Part[$CellContext`fg, 
           2]), {$CellContext`fg, $CellContext`fgList2}]; $CellContext`fgc = 
       Apply[Plus, $CellContext`fgList] + Apply[Plus, $CellContext`fgList2]; 
      On[
        MessageName[Import, "nffil"]]; 
      ResetDirectory[]; $CellContext`tbc = 
       Ceiling[$CellContext`tbc]; $CellContext`fgc = 
       Ceiling[$CellContext`fgc]; MessageDialog[
        TableForm[{{"Text Words:       ", $CellContext`wc}, {
          "Equation Words:       ", $CellContext`eqc}, {
          "Figure Words:       ", $CellContext`fgc}, {
          "Table Words:       ", $CellContext`tbc}, {$CellContext`\
\[HorizontalLine], $CellContext`\[HorizontalLine]}, {
          "Total Words:       ", 
           ToExpression[$CellContext`wc] + $CellContext`eqc + \
$CellContext`tbc + $CellContext`fgc}}, TableSpacing -> {1, 0}, 
         TableAlignments -> Right], WindowTitle -> "Words Count", WindowSize -> 
        All]])]]]
},
WindowSize->{608, 135},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.2 for Mac OS X x86 (32-bit, 64-bit Kernel) (July 29, \
2015)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 10038, 213, 118, InheritFromParent]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature suTBEtkN3Y5j8B1Yv6Clorsp *)
