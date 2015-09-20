(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

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
NotebookDataPosition[      1063,         20]
NotebookDataLength[      6954,        172]
NotebookOptionsPosition[      7447,        166]
NotebookOutlinePosition[      7949,        187]
CellTagsIndexPosition[      7906,        184]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 DynamicModuleBox[{$CellContext`TeXIn$$ = Null, $CellContext`TeXOut$$ = Null}, 
  PanelBox[
   TagBox[GridBox[{
      {
       TemplateBox[{
        StyleBox[
         "\"   Input: \"", StripOnInput -> False, LineColor -> 
          RGBColor[0, 0, 1], FrontFaceColor -> RGBColor[0, 0, 1], 
          BackFaceColor -> RGBColor[0, 0, 1], GraphicsColor -> 
          RGBColor[0, 0, 1], FontColor -> RGBColor[0, 0, 1]],InputFieldBox[
          Dynamic[$CellContext`TeXIn$$], String, ImageSize -> 300]},
        "RowDefault"], 
       InterpretationBox[
        ButtonBox[
         DynamicBox[FEPrivate`FrontEndResource["FEStrings", "BrowseLabel"],
          ImageSizeCache->{53., {0., 9.}}],
         Appearance->"DialogBox",
         ButtonFunction:>BoxForm`FileNameSetterFunction[
           Dynamic[$CellContext`TeXIn$$], "Open", Automatic, Automatic],
         Enabled->Automatic,
         Evaluator->Automatic,
         ImageMargins->0,
         ImageSize->Automatic,
         Method->"Queued"],
        FileNameSetter[
         Dynamic[$CellContext`TeXIn$$], "Open", Automatic]]},
      {
       TemplateBox[{
        StyleBox[
         "\"Output: \"", StripOnInput -> False, LineColor -> 
          RGBColor[0, 0, 1], FrontFaceColor -> RGBColor[0, 0, 1], 
          BackFaceColor -> RGBColor[0, 0, 1], GraphicsColor -> 
          RGBColor[0, 0, 1], FontColor -> RGBColor[0, 0, 1]],InputFieldBox[
          Dynamic[$CellContext`TeXOut$$], String, ImageSize -> 300]},
        "RowDefault"], 
       InterpretationBox[
        ButtonBox[
         DynamicBox[FEPrivate`FrontEndResource["FEStrings", "BrowseLabel"],
          ImageSizeCache->{53., {0., 9.}}],
         Appearance->"DialogBox",
         ButtonFunction:>BoxForm`FileNameSetterFunction[
           Dynamic[$CellContext`TeXOut$$], "Save", Automatic, Automatic],
         Enabled->Automatic,
         Evaluator->Automatic,
         ImageMargins->0,
         ImageSize->Automatic,
         Method->"Queued"],
        FileNameSetter[
         Dynamic[$CellContext`TeXOut$$], "Save", Automatic]]},
      {
       ButtonBox["\<\"Sort bibitems NOW\"\>",
        Appearance->Automatic,
        ButtonFunction:>($CellContext`Result = \
$CellContext`SortBibitem[$CellContext`TeXIn$$, $CellContext`TeXOut$$]),
        Evaluator->Automatic,
        Method->"Preemptive"], "\[SpanFromLeft]"}
     },
     AutoDelete->False,
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Grid"]],
  DynamicModuleValues:>{},
  Initialization:>(SetDirectory[
     NotebookDirectory[]]; $CellContext`SortBibitem[
      Pattern[$CellContext`fn, 
       Blank[]], 
      Pattern[$CellContext`ofn, 
       Blank[]]] := 
    Module[{$CellContext`tex, $CellContext`cites, $CellContext`posb, \
$CellContext`pose, $CellContext`bib, $CellContext`bitem, $CellContext`VF, \
$CellContext`in = 0, $CellContext`set1, $CellContext`set2}, If[
        Or[$CellContext`fn === Null, $CellContext`ofn === Null], 
        MessageDialog[
         "Please Set The Input & Output TeX Files!", WindowTitle -> 
          "File Not Set!"]; Return[]]; If[
        Not[
         FileExistsQ[$CellContext`fn]], 
        MessageDialog[
         "The Input File Not Found!", WindowTitle -> "File Not Found!"]; 
        Return[]]; $CellContext`tex = 
       Import[$CellContext`fn, "String"]; $CellContext`cites = 
       StringCases[$CellContext`tex, 
         RegularExpression["(?<!%)\\\\cite{([^{}]+)}"] -> 
         "$1"]; $CellContext`cites = Flatten[
         Map[StringTrim[
           StringSplit[#, ","]]& , $CellContext`cites]]; $CellContext`cites = 
       DeleteDuplicates[$CellContext`cites]; $CellContext`posb = 
       StringPosition[$CellContext`tex, 
         "\\begin{thebibliography}{99}"]; $CellContext`pose = 
       StringPosition[$CellContext`tex, "\\end{thebibliography}"]; 
      If[$CellContext`posb === {}, 
        MessageDialog[
         "\\begin{thebibliography}{99} Not Found", WindowTitle -> 
          "Begin Mark Not Found!"]; Return[]]; 
      If[$CellContext`pose === {}, 
        MessageDialog[
         "\\end{thebibliography} Not Found", WindowTitle -> 
          "End Mark Not Found!"]; Return[]]; $CellContext`bib = StringTrim[
         StringTake[$CellContext`tex, {
          Part[$CellContext`posb, 1, 2] + 1, Part[$CellContext`pose, 1, 1] - 
           1}]]; $CellContext`bitem = StringCases[$CellContext`bib, 
         RegularExpression[
         "((%\\\\cite{[^{}]+}\\r?\\n\\r?)?\\\\bibitem{[^{}]+}((?s).*?))(?=%\\\
\\cite|\\\\bibitem{|$)"]]; $CellContext`bitem = 
       Map[StringTrim, $CellContext`bitem]; 
      Scan[($CellContext`VF[#] = 
        Increment[$CellContext`in])& , $CellContext`cites]; $CellContext`VF[
         Pattern[$CellContext`x, 
          Blank[]]] := ($CellContext`VF[$CellContext`x] = 
        Increment[$CellContext`in]); $CellContext`bib = Flatten[
         StringCases[$CellContext`bitem, 
          RegularExpression["\\\\bibitem{([^{}]+)}"] -> 
          "$1"]]; $CellContext`bitem = 
       SortBy[$CellContext`bitem, $CellContext`VF[
          Part[
           StringCases[#, RegularExpression["\\\\bibitem{([^{}]+)}"] -> "$1"],
            1]]& ]; $CellContext`set1 = 
       Complement[$CellContext`cites, $CellContext`bib]; $CellContext`set2 = 
       Complement[$CellContext`bib, $CellContext`cites]; $CellContext`tex = 
       StringJoin[
         StringTake[$CellContext`tex, {1, 
           Part[$CellContext`posb, 1, 2]}], "\n", 
         Map[StringJoin["\n", #, "\n"]& , $CellContext`bitem], "\n", 
         StringTake[$CellContext`tex, {
           Part[$CellContext`pose, 1, 1], -1}]]; 
      Export[$CellContext`ofn, $CellContext`tex, "String"]; MessageDialog[
        Panel[
         Grid[{{
            Style["Not Supplied: ", Red], $CellContext`set1}, {}, {
            Style["Not Cited: ", Blue], $CellContext`set2}}, 
          Alignment -> {{Right, Left}, {Right, Left}}]], WindowTitle -> 
        "Sorted Successfully!"]; Null])]]]
},
WindowSize->{475, 140},
WindowMargins->{{387, Automatic}, {258, Automatic}},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Microsoft Windows (32-bit) (November 20, 2012)",
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
Cell[1463, 33, 5980, 131, 124, InheritFromParent]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature #uTvm3m9pfhmrDKBY@QbPyob *)
